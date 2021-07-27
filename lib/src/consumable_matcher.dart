import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart' hide isTrue;

import 'utils.dart';

final validConsumable = _ConsumableMatcher(success: true);
final invalidConsumable = _ConsumableMatcher(success: false);

Matcher consumableHasValue(dynamic value) => _ConsumableMatcher(success: true, onSuccess: wrapMatcher(value));
Matcher consumableHasFailure<T>() => _ConsumableMatcher(success: false, onError: isA<T>());

class _ConsumableMatcher extends Matcher {
  final bool success;

  final Matcher? onSuccess;
  final Matcher? onError;

  _ConsumableMatcher({
    required this.success,
    this.onSuccess,
    this.onError,
  });

  @override
  Description describe(Description description) {
    if (success) {
      description.add('Consumable should be valid');

      onSuccess.let((some) {
        description.add('and the value should be equal to');
        some.describe(description);
      });
    } else {
      description.add('Consumable should be invalid');

      onError.let((some) {
        description.add('and the failure should be equal to');
        some.describe(description);
      });
    }

    return description;
  }

  @override
  bool matches(item, Map matchState) {
    if (item is ConsumableAsync) {
      final result = item.consume(
        onSuccess: (value) {
          if (!success) return false;

          return onSuccess?.matches(value, matchState) ?? true;
        },
        onError: (failure) {
          if (success) return false;

          return onError?.matches(failure, matchState) ?? true;
        },
      );

      return completion(isTrue).matches(result, matchState);
    } else if (item is Consumable) {
      return item.consume(
        onSuccess: (value) {
          if (!success) return false;

          return onSuccess?.matches(value, matchState) ?? true;
        },
        onError: (failure) {
          if (success) return false;

          return onError?.matches(failure, matchState) ?? true;
        },
      );
    }
    return false;
  }
}
