// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parser_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParserTestCaseTearOff {
  const _$ParserTestCaseTearOff();

  ParserTestCaseInvalid<T, S> invalid<T, S>(String name,
      {required T input, Failure? failure}) {
    return ParserTestCaseInvalid<T, S>(
      name,
      input: input,
      failure: failure,
    );
  }

  ParserTestCaseValid<T, S> valid<T, S>(String name,
      {required T input, S? output, void Function(S)? verify}) {
    return ParserTestCaseValid<T, S>(
      name,
      input: input,
      output: output,
      verify: verify,
    );
  }
}

/// @nodoc
const $ParserTestCase = _$ParserTestCaseTearOff();

/// @nodoc
mixin _$ParserTestCase<T, S> {
  String get name => throw _privateConstructorUsedError;
  T get input => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, T input, Failure? failure) invalid,
    required TResult Function(
            String name, T input, S? output, void Function(S)? verify)
        valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, T input, Failure? failure)? invalid,
    TResult Function(String name, T input, S? output, void Function(S)? verify)?
        valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, T input, Failure? failure)? invalid,
    TResult Function(String name, T input, S? output, void Function(S)? verify)?
        valid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParserTestCaseInvalid<T, S> value) invalid,
    required TResult Function(ParserTestCaseValid<T, S> value) valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParserTestCaseInvalid<T, S> value)? invalid,
    TResult Function(ParserTestCaseValid<T, S> value)? valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParserTestCaseInvalid<T, S> value)? invalid,
    TResult Function(ParserTestCaseValid<T, S> value)? valid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParserTestCaseCopyWith<T, S, ParserTestCase<T, S>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParserTestCaseCopyWith<T, S, $Res> {
  factory $ParserTestCaseCopyWith(ParserTestCase<T, S> value,
          $Res Function(ParserTestCase<T, S>) then) =
      _$ParserTestCaseCopyWithImpl<T, S, $Res>;
  $Res call({String name, T input});
}

/// @nodoc
class _$ParserTestCaseCopyWithImpl<T, S, $Res>
    implements $ParserTestCaseCopyWith<T, S, $Res> {
  _$ParserTestCaseCopyWithImpl(this._value, this._then);

  final ParserTestCase<T, S> _value;
  // ignore: unused_field
  final $Res Function(ParserTestCase<T, S>) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $ParserTestCaseInvalidCopyWith<T, S, $Res>
    implements $ParserTestCaseCopyWith<T, S, $Res> {
  factory $ParserTestCaseInvalidCopyWith(ParserTestCaseInvalid<T, S> value,
          $Res Function(ParserTestCaseInvalid<T, S>) then) =
      _$ParserTestCaseInvalidCopyWithImpl<T, S, $Res>;
  @override
  $Res call({String name, T input, Failure? failure});
}

/// @nodoc
class _$ParserTestCaseInvalidCopyWithImpl<T, S, $Res>
    extends _$ParserTestCaseCopyWithImpl<T, S, $Res>
    implements $ParserTestCaseInvalidCopyWith<T, S, $Res> {
  _$ParserTestCaseInvalidCopyWithImpl(ParserTestCaseInvalid<T, S> _value,
      $Res Function(ParserTestCaseInvalid<T, S>) _then)
      : super(_value, (v) => _then(v as ParserTestCaseInvalid<T, S>));

  @override
  ParserTestCaseInvalid<T, S> get _value =>
      super._value as ParserTestCaseInvalid<T, S>;

  @override
  $Res call({
    Object? name = freezed,
    Object? input = freezed,
    Object? failure = freezed,
  }) {
    return _then(ParserTestCaseInvalid<T, S>(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as T,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ParserTestCaseInvalid<T, S> implements ParserTestCaseInvalid<T, S> {
  const _$ParserTestCaseInvalid(this.name, {required this.input, this.failure});

  @override
  final String name;
  @override
  final T input;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ParserTestCase<$T, $S>.invalid(name: $name, input: $input, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParserTestCaseInvalid<T, S> &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)) &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(input) ^
      const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $ParserTestCaseInvalidCopyWith<T, S, ParserTestCaseInvalid<T, S>>
      get copyWith => _$ParserTestCaseInvalidCopyWithImpl<T, S,
          ParserTestCaseInvalid<T, S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, T input, Failure? failure) invalid,
    required TResult Function(
            String name, T input, S? output, void Function(S)? verify)
        valid,
  }) {
    return invalid(name, input, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, T input, Failure? failure)? invalid,
    TResult Function(String name, T input, S? output, void Function(S)? verify)?
        valid,
  }) {
    return invalid?.call(name, input, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, T input, Failure? failure)? invalid,
    TResult Function(String name, T input, S? output, void Function(S)? verify)?
        valid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(name, input, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParserTestCaseInvalid<T, S> value) invalid,
    required TResult Function(ParserTestCaseValid<T, S> value) valid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParserTestCaseInvalid<T, S> value)? invalid,
    TResult Function(ParserTestCaseValid<T, S> value)? valid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParserTestCaseInvalid<T, S> value)? invalid,
    TResult Function(ParserTestCaseValid<T, S> value)? valid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class ParserTestCaseInvalid<T, S> implements ParserTestCase<T, S> {
  const factory ParserTestCaseInvalid(String name,
      {required T input, Failure? failure}) = _$ParserTestCaseInvalid<T, S>;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  T get input => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ParserTestCaseInvalidCopyWith<T, S, ParserTestCaseInvalid<T, S>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParserTestCaseValidCopyWith<T, S, $Res>
    implements $ParserTestCaseCopyWith<T, S, $Res> {
  factory $ParserTestCaseValidCopyWith(ParserTestCaseValid<T, S> value,
          $Res Function(ParserTestCaseValid<T, S>) then) =
      _$ParserTestCaseValidCopyWithImpl<T, S, $Res>;
  @override
  $Res call({String name, T input, S? output, void Function(S)? verify});
}

/// @nodoc
class _$ParserTestCaseValidCopyWithImpl<T, S, $Res>
    extends _$ParserTestCaseCopyWithImpl<T, S, $Res>
    implements $ParserTestCaseValidCopyWith<T, S, $Res> {
  _$ParserTestCaseValidCopyWithImpl(ParserTestCaseValid<T, S> _value,
      $Res Function(ParserTestCaseValid<T, S>) _then)
      : super(_value, (v) => _then(v as ParserTestCaseValid<T, S>));

  @override
  ParserTestCaseValid<T, S> get _value =>
      super._value as ParserTestCaseValid<T, S>;

  @override
  $Res call({
    Object? name = freezed,
    Object? input = freezed,
    Object? output = freezed,
    Object? verify = freezed,
  }) {
    return _then(ParserTestCaseValid<T, S>(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as T,
      output: output == freezed
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as S?,
      verify: verify == freezed
          ? _value.verify
          : verify // ignore: cast_nullable_to_non_nullable
              as void Function(S)?,
    ));
  }
}

/// @nodoc

class _$ParserTestCaseValid<T, S> implements ParserTestCaseValid<T, S> {
  const _$ParserTestCaseValid(this.name,
      {required this.input, this.output, this.verify})
      : assert(output != null || verify != null);

  @override
  final String name;
  @override
  final T input;
  @override
  final S? output;
  @override
  final void Function(S)? verify;

  @override
  String toString() {
    return 'ParserTestCase<$T, $S>.valid(name: $name, input: $input, output: $output, verify: $verify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ParserTestCaseValid<T, S> &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)) &&
            (identical(other.output, output) ||
                const DeepCollectionEquality().equals(other.output, output)) &&
            (identical(other.verify, verify) ||
                const DeepCollectionEquality().equals(other.verify, verify)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(input) ^
      const DeepCollectionEquality().hash(output) ^
      const DeepCollectionEquality().hash(verify);

  @JsonKey(ignore: true)
  @override
  $ParserTestCaseValidCopyWith<T, S, ParserTestCaseValid<T, S>> get copyWith =>
      _$ParserTestCaseValidCopyWithImpl<T, S, ParserTestCaseValid<T, S>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, T input, Failure? failure) invalid,
    required TResult Function(
            String name, T input, S? output, void Function(S)? verify)
        valid,
  }) {
    return valid(name, input, output, verify);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, T input, Failure? failure)? invalid,
    TResult Function(String name, T input, S? output, void Function(S)? verify)?
        valid,
  }) {
    return valid?.call(name, input, output, verify);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, T input, Failure? failure)? invalid,
    TResult Function(String name, T input, S? output, void Function(S)? verify)?
        valid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(name, input, output, verify);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ParserTestCaseInvalid<T, S> value) invalid,
    required TResult Function(ParserTestCaseValid<T, S> value) valid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ParserTestCaseInvalid<T, S> value)? invalid,
    TResult Function(ParserTestCaseValid<T, S> value)? valid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ParserTestCaseInvalid<T, S> value)? invalid,
    TResult Function(ParserTestCaseValid<T, S> value)? valid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class ParserTestCaseValid<T, S> implements ParserTestCase<T, S> {
  const factory ParserTestCaseValid(String name,
      {required T input,
      S? output,
      void Function(S)? verify}) = _$ParserTestCaseValid<T, S>;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  T get input => throw _privateConstructorUsedError;
  S? get output => throw _privateConstructorUsedError;
  void Function(S)? get verify => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ParserTestCaseValidCopyWith<T, S, ParserTestCaseValid<T, S>> get copyWith =>
      throw _privateConstructorUsedError;
}
