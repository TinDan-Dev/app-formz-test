import 'package:flutter/material.dart' hide FormState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart' hide isTrue, isFalse, select, equals;

class LocalTestCubit extends FormCubit {
  LocalTestCubit(Input input) : super(FormState([input]));

  void test(Object? value) {
    setInput(value, name: 'test');
  }
}

class LocalTestWidget extends StatelessWidget {
  final Object? value;
  final GenericInput input;
  final LocalFunc? local;
  final Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates;
  final Iterable<Locale> supportedLocales;

  LocalTestWidget({
    required this.input,
    required this.local,
    required this.value,
    required this.localizationsDelegates,
    required this.supportedLocales,
    Key? key,
  })  : assert(input.name == 'test'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      home: Scaffold(
        body: FormWidget(
          create: (_) => LocalTestCubit(input),
          child: FormStateListener<LocalTestCubit>(
            listener: (context, state) {
              final input = state.getInput<GenericInput>('test');

              if (local == null)
                expect(input.error, isNull);
              else
                expect(input.error?.localize(context), equals(local!(context)));
            },
            child: Builder(
              builder: (context) {
                return ElevatedButton(
                  key: const ValueKey('testButton'),
                  onPressed: () {
                    context.read<LocalTestCubit>().test(value);
                  },
                  child: const Text('test'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

typedef BuildGenericInput = GenericInput Function();

void testInputLocal<T>(
  String description, {
  required BuildGenericInput buildPure,
  required Map<T, LocalFunc?> local,
  required Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates,
  required Iterable<Locale> supportedLocales,
}) {
  group(description, () {
    for (final io in local.entries) {
      testWidgets('test ${io.key} localization', (tester) async {
        await tester.pumpWidget(LocalTestWidget(
          input: buildPure(),
          value: io.key,
          local: io.value,
          localizationsDelegates: localizationsDelegates,
          supportedLocales: supportedLocales,
        ));
        await tester.pumpAndSettle();

        await tester.tap(find.byKey(const ValueKey('testButton')));
        await tester.pumpAndSettle(const Duration(milliseconds: 1000));
      });
    }
  });
}
