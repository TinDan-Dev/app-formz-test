import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart' hide equals;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parser_test.freezed.dart';

@freezed
class ParserTestCase<T, S> with _$ParserTestCase<T, S> {
  const factory ParserTestCase.invalid(
    String name, {
    required T input,
    Failure? failure,
  }) = ParserTestCaseInvalid;

  @Assert('output != null || verify != null')
  const factory ParserTestCase.valid(
    String name, {
    required T input,
    S? output,
    void Function(S result)? verify,
  }) = ParserTestCaseValid;
}

void parserTest<T, S>(
  String name, {
  required Result<S> Function(T input) parse,
  required Iterable<ParserTestCase<T, S>> cases,
}) {
  group(name, () {
    for (final testCase in cases) {
      test(testCase.name, () {
        final result = parse(testCase.input);

        testCase.map(
          invalid: (value) {
            result.consume(
              onRight: (result) => fail('Expected an invalid result, but found $result'),
              onLeft: (failure) {
                if (value.failure != null) {
                  expect(failure, equals(value.failure));
                }
              },
            );
          },
          valid: (value) {
            result.consume(
              onRight: (result) {
                if (value.output != null) {
                  expect(result, equals(value.output));
                }
                value.verify?.call(result);
              },
              onLeft: (failure) => fail('Expected a valid result, but found $failure'),
            );
          },
        );
      });
    }
  });
}
