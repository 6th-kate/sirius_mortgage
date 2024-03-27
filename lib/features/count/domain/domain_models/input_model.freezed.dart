// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InputDomainModel {
  SummaryInformationInput get input => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputDomainModelCopyWith<InputDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputDomainModelCopyWith<$Res> {
  factory $InputDomainModelCopyWith(
          InputDomainModel value, $Res Function(InputDomainModel) then) =
      _$InputDomainModelCopyWithImpl<$Res, InputDomainModel>;
  @useResult
  $Res call({SummaryInformationInput input});
}

/// @nodoc
class _$InputDomainModelCopyWithImpl<$Res, $Val extends InputDomainModel>
    implements $InputDomainModelCopyWith<$Res> {
  _$InputDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as SummaryInformationInput,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputDomainModelImplCopyWith<$Res>
    implements $InputDomainModelCopyWith<$Res> {
  factory _$$InputDomainModelImplCopyWith(_$InputDomainModelImpl value,
          $Res Function(_$InputDomainModelImpl) then) =
      __$$InputDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SummaryInformationInput input});
}

/// @nodoc
class __$$InputDomainModelImplCopyWithImpl<$Res>
    extends _$InputDomainModelCopyWithImpl<$Res, _$InputDomainModelImpl>
    implements _$$InputDomainModelImplCopyWith<$Res> {
  __$$InputDomainModelImplCopyWithImpl(_$InputDomainModelImpl _value,
      $Res Function(_$InputDomainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$InputDomainModelImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as SummaryInformationInput,
    ));
  }
}

/// @nodoc

class _$InputDomainModelImpl implements _InputDomainModel {
  const _$InputDomainModelImpl({required this.input});

  @override
  final SummaryInformationInput input;

  @override
  String toString() {
    return 'InputDomainModel(input: $input)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputDomainModelImpl &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputDomainModelImplCopyWith<_$InputDomainModelImpl> get copyWith =>
      __$$InputDomainModelImplCopyWithImpl<_$InputDomainModelImpl>(
          this, _$identity);
}

abstract class _InputDomainModel implements InputDomainModel {
  const factory _InputDomainModel(
      {required final SummaryInformationInput input}) = _$InputDomainModelImpl;

  @override
  SummaryInformationInput get input;
  @override
  @JsonKey(ignore: true)
  _$$InputDomainModelImplCopyWith<_$InputDomainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
