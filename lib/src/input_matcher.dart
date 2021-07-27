import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart' hide isTrue, isFalse, select, equals;

import 'select_matcher.dart';

final isPure = pureMatches(isTrue);

final isValid = validMatches(isTrue);

final isInvalid = validMatches(isFalse);

Matcher genericErrorContainsKey(Object key) => genericErrorContainsKeys([key]);

Matcher genericErrorContainsKeys(List<Object> keys) =>
    errorMatches(select<GenericInputError>((error) => error.keys, containsAll(keys)));

InputMatcher errorMatches(Object? input) => inputMatches(error: input ?? isNull);

InputMatcher valueMatches(Object? input) => inputMatches(value: input ?? isNull);

InputMatcher pureMatches(Object? input) => inputMatches(pure: input ?? isNull);

InputMatcher validMatches(Object? input) => inputMatches(valid: input ?? isNull);

InputMatcher inputMatches({
  Object? error,
  Object? value,
  Object? pure,
  Object? valid,
}) =>
    InputMatcher._(error, value, pure, valid);

class _DummyMatcher extends Matcher {
  @override
  Description describe(Description description) {
    description.add('dummy matcher');
    return description;
  }

  @override
  bool matches(item, Map matchState) => true;
}

class InputMatcher extends Matcher {
  final Object? error;
  final Object? value;
  final Object? pure;
  final Object? valid;

  InputMatcher._(this.error, this.value, this.pure, this.valid)
      : assert(error != null || value != null || pure != null || valid != null);

  void _addDescription(String name, Object? value, Description description) {
    if (value == null) return;

    if (value is Matcher) {
      description.add('$name should match: ');
      value.describe(description);
      description.add(', ');
    } else {
      description.add('$name should be equal to: $value');
    }
  }

  @override
  Description describe(Description description) {
    _addDescription('error', error, description);
    _addDescription('value', value, description);
    _addDescription('pure', pure, description);
    _addDescription('valid', valid, description);

    return description;
  }

  bool _matchProperty(Object? matcher, Object? property, Map matchState) {
    if (matcher == null) return true;
    if (matcher is Matcher) return matcher.matches(property, matchState);

    return equals(property).matches(matcher, matchState);
  }

  @override
  bool matches(item, Map matchState) {
    if (item is Input) {
      return _matchProperty(error, item.error, matchState) &&
          _matchProperty(value, item.value, matchState) &&
          _matchProperty(pure, item.pure, matchState) &&
          _matchProperty(value, item.value, matchState);
    }

    return false;
  }

  Matcher ignoreError() {
    if (value == null && pure == null && valid == null) return _DummyMatcher();

    return InputMatcher._(null, value, pure, valid);
  }

  @override
  String toString() {
    final builder = StringDescription();
    return describe(builder).toString();
  }
}
