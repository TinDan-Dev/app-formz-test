import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart' hide isTrue, isFalse, equals, select;

import 'either_matcher.dart';
import 'select_matcher.dart';

void testFormInput<C extends FormCubit>(
  String description, {
  required C build(),
  required FormState validState,
  required Map<dynamic Function(C cubit, dynamic input), Map<dynamic, bool>> inputs,
}) {
  group(description, () {
    final cubit = build();

    final state = cubit.state;

    if (cubit is! FormMemoryMixin) {
      test(
        'initial state is pure',
        () => expect(state.pure, isTrue),
      );
    }

    for (final entry in inputs.entries) {
      group('', () {
        setUp(() async {
          cubit.emit(validState);

          // make sure the event propagated
          await Future.delayed(const Duration(milliseconds: 1));
        });

        final function = entry.key;

        for (final io in entry.value.entries) {
          test('input: ${io.key} is valid: ${io.value}', () async {
            final result = function(cubit, io.key);
            if (result is Future) await result;

            expect(cubit.state.valid, equals(io.value));
          });
        }
      });
    }
  });
}

void testFormSubmission<C extends FormCubit>(
  String description, {
  required C build(),
  required void Function(C) configureSuccess(),
  required void Function(C) configureFailure(),
  required FormState validState,
  required Future<Result<void>> Function(C cubit) action,
}) {
  group(description, () {
    group('success', () {
      late C cubit;
      late void Function(C) verify;

      setUp(() {
        cubit = build();
        verify = configureSuccess();
      });

      test('should return true', () async {
        cubit.emit(validState);
        expect(await action(cubit), isRight);
      });

      blocTest<C, FormState>(
        'should always emit submissionInProgress first when called',
        build: () => cubit,
        seed: () => validState,
        act: (cubit) => action(cubit),
        wait: const Duration(milliseconds: 1),
        expect: () => contains(select<FormState>((state) => state.submission, isTrue)),
        verify: (cubit) => verify(cubit),
      );

      blocTest<C, FormState>(
        'should emit submissionSuccess at the end when the request was successful',
        build: () => cubit,
        seed: () => validState,
        act: (cubit) => action(cubit),
        skip: 1,
        wait: const Duration(milliseconds: 1),
        expect: () => contains(select<FormState>(
          (state) => state.failure,
          isNull,
        )),
        verify: (cubit) => verify(cubit),
      );
    });

    group('failure', () {
      late C cubit;
      late void Function(C) verify;

      setUp(() {
        cubit = build();
        verify = configureFailure();
      });

      test('should return false', () async {
        cubit.emit(validState);
        expect(await action(cubit), isLeft);
      });

      blocTest<C, FormState>(
        'should always emit submissionInProgress first when called',
        build: () => cubit,
        seed: () => validState,
        act: (cubit) => action(cubit),
        wait: const Duration(milliseconds: 1),
        expect: () => [select<FormState>((state) => state.submission, isTrue), isA<FormState>()],
        verify: (cubit) => verify(cubit),
      );

      blocTest<C, FormState>(
        'should emit submissionFailure at the end when the request was not successful',
        build: () => cubit,
        seed: () => validState,
        act: (cubit) => action(cubit),
        skip: 1,
        wait: const Duration(milliseconds: 1),
        expect: () => [
          select<FormState>((state) => state.failure, isNotNull),
        ],
        verify: (cubit) => verify(cubit),
      );

      blocTest<C, FormState>(
        'should failure should not be none when the request was not successful',
        build: () => cubit,
        seed: () => validState,
        act: (cubit) => action(cubit),
        skip: 1,
        wait: const Duration(milliseconds: 1),
        expect: () => [
          select<FormState>((state) => state.failure, isNotNull),
        ],
      );
    });
  });
}
