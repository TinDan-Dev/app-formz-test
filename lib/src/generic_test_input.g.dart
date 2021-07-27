// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_test_input.dart';

// **************************************************************************
// GenericInputGenerator
// **************************************************************************

/// Input implementation for "GenericTestInput" criteria collection.
class GenericTestInput extends GenericInput<String> {
  GenericTestInput.pure(String? value, {required String name})
      : super.pure(value, name: name);

  GenericTestInput.dirty(String? value, {required String name})
      : super.dirty(value, name: name);

  static final _collection = GenericTestInputCriteriaCollection();

  @override
  GenericCriteriaCollection<String> getCollection() => _collection;
  @override
  Input<String, GenericInputError> copyWith(
      {required String? value, bool pure = false}) {
    if (pure)
      return GenericTestInput.pure(value, name: name);
    else
      return GenericTestInput.dirty(value, name: name);
  }
}
