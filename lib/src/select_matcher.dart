import 'package:flutter_test/flutter_test.dart';

Matcher select<T>(dynamic Function(T some) selector, Matcher matcher) => _Selector<T>(selector, matcher);

class _Selector<T> extends Matcher {
  final dynamic Function(T some) selector;
  final Matcher matcher;

  _Selector(this.selector, this.matcher);

  @override
  Description describe(Description description) {
    description.add('selected should match: ');
    matcher.describe(description);
    return description;
  }

  @override
  bool matches(item, Map matchState) {
    if (item is! T) return false;

    return matcher.matches(
      selector(item),
      matchState,
    );
  }
}
