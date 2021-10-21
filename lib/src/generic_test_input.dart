import 'package:formz/formz.dart';

part 'generic_test_input.g.dart';

@genGenericInput
class GenericTestInputCriteriaCollection extends GenericCriteriaCollection<String> {
  @override
  GenericBuilder<String> createCriteria() => add((builder) => builder..validate(stringNotEmpty()));
}
