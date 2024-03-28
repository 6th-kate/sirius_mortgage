// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'output_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OutputDomainModel {
  CurrencyType get currency => throw _privateConstructorUsedError;
  SummaryInformationInput get input => throw _privateConstructorUsedError;
  CalculatorSummaryInformation get output => throw _privateConstructorUsedError;
  List<CalculatorResultData> get tableInfo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OutputDomainModelCopyWith<OutputDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputDomainModelCopyWith<$Res> {
  factory $OutputDomainModelCopyWith(
          OutputDomainModel value, $Res Function(OutputDomainModel) then) =
      _$OutputDomainModelCopyWithImpl<$Res, OutputDomainModel>;
  @useResult
  $Res call(
      {CurrencyType currency,
      SummaryInformationInput input,
      CalculatorSummaryInformation output,
      List<CalculatorResultData> tableInfo});
}

/// @nodoc
class _$OutputDomainModelCopyWithImpl<$Res, $Val extends OutputDomainModel>
    implements $OutputDomainModelCopyWith<$Res> {
  _$OutputDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? input = null,
    Object? output = null,
    Object? tableInfo = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as SummaryInformationInput,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as CalculatorSummaryInformation,
      tableInfo: null == tableInfo
          ? _value.tableInfo
          : tableInfo // ignore: cast_nullable_to_non_nullable
              as List<CalculatorResultData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutputDomainModelImplCopyWith<$Res>
    implements $OutputDomainModelCopyWith<$Res> {
  factory _$$OutputDomainModelImplCopyWith(_$OutputDomainModelImpl value,
          $Res Function(_$OutputDomainModelImpl) then) =
      __$$OutputDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CurrencyType currency,
      SummaryInformationInput input,
      CalculatorSummaryInformation output,
      List<CalculatorResultData> tableInfo});
}

/// @nodoc
class __$$OutputDomainModelImplCopyWithImpl<$Res>
    extends _$OutputDomainModelCopyWithImpl<$Res, _$OutputDomainModelImpl>
    implements _$$OutputDomainModelImplCopyWith<$Res> {
  __$$OutputDomainModelImplCopyWithImpl(_$OutputDomainModelImpl _value,
      $Res Function(_$OutputDomainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? input = null,
    Object? output = null,
    Object? tableInfo = null,
  }) {
    return _then(_$OutputDomainModelImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as SummaryInformationInput,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as CalculatorSummaryInformation,
      tableInfo: null == tableInfo
          ? _value._tableInfo
          : tableInfo // ignore: cast_nullable_to_non_nullable
              as List<CalculatorResultData>,
    ));
  }
}

/// @nodoc

class _$OutputDomainModelImpl implements _OutputDomainModel {
  const _$OutputDomainModelImpl(
      {required this.currency,
      required this.input,
      required this.output,
      required final List<CalculatorResultData> tableInfo})
      : _tableInfo = tableInfo;

  @override
  final CurrencyType currency;
  @override
  final SummaryInformationInput input;
  @override
  final CalculatorSummaryInformation output;
  final List<CalculatorResultData> _tableInfo;
  @override
  List<CalculatorResultData> get tableInfo {
    if (_tableInfo is EqualUnmodifiableListView) return _tableInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tableInfo);
  }

  @override
  String toString() {
    return 'OutputDomainModel(currency: $currency, input: $input, output: $output, tableInfo: $tableInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutputDomainModelImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.output, output) || other.output == output) &&
            const DeepCollectionEquality()
                .equals(other._tableInfo, _tableInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency, input, output,
      const DeepCollectionEquality().hash(_tableInfo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutputDomainModelImplCopyWith<_$OutputDomainModelImpl> get copyWith =>
      __$$OutputDomainModelImplCopyWithImpl<_$OutputDomainModelImpl>(
          this, _$identity);
}

abstract class _OutputDomainModel implements OutputDomainModel {
  const factory _OutputDomainModel(
          {required final CurrencyType currency,
          required final SummaryInformationInput input,
          required final CalculatorSummaryInformation output,
          required final List<CalculatorResultData> tableInfo}) =
      _$OutputDomainModelImpl;

  @override
  CurrencyType get currency;
  @override
  SummaryInformationInput get input;
  @override
  CalculatorSummaryInformation get output;
  @override
  List<CalculatorResultData> get tableInfo;
  @override
  @JsonKey(ignore: true)
  _$$OutputDomainModelImplCopyWith<_$OutputDomainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
