// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrencyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyType currency) currencyChanged,
    required TResult Function() needCurrencyLoad,
    required TResult Function(SimpleResponse<CurrencyType> response) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurrencyType currency)? currencyChanged,
    TResult? Function()? needCurrencyLoad,
    TResult? Function(SimpleResponse<CurrencyType> response)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyType currency)? currencyChanged,
    TResult Function()? needCurrencyLoad,
    TResult Function(SimpleResponse<CurrencyType> response)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(NeedCurrencyLoad value) needCurrencyLoad,
    required TResult Function(CurrencyReload value) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(NeedCurrencyLoad value)? needCurrencyLoad,
    TResult? Function(CurrencyReload value)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(NeedCurrencyLoad value)? needCurrencyLoad,
    TResult Function(CurrencyReload value)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyEventCopyWith<$Res> {
  factory $CurrencyEventCopyWith(
          CurrencyEvent value, $Res Function(CurrencyEvent) then) =
      _$CurrencyEventCopyWithImpl<$Res, CurrencyEvent>;
}

/// @nodoc
class _$CurrencyEventCopyWithImpl<$Res, $Val extends CurrencyEvent>
    implements $CurrencyEventCopyWith<$Res> {
  _$CurrencyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrencyChangedImplCopyWith<$Res> {
  factory _$$CurrencyChangedImplCopyWith(_$CurrencyChangedImpl value,
          $Res Function(_$CurrencyChangedImpl) then) =
      __$$CurrencyChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyType currency});
}

/// @nodoc
class __$$CurrencyChangedImplCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res, _$CurrencyChangedImpl>
    implements _$$CurrencyChangedImplCopyWith<$Res> {
  __$$CurrencyChangedImplCopyWithImpl(
      _$CurrencyChangedImpl _value, $Res Function(_$CurrencyChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_$CurrencyChangedImpl(
      null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
    ));
  }
}

/// @nodoc

class _$CurrencyChangedImpl implements CurrencyChanged {
  _$CurrencyChangedImpl(this.currency);

  @override
  final CurrencyType currency;

  @override
  String toString() {
    return 'CurrencyEvent.currencyChanged(currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyChangedImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyChangedImplCopyWith<_$CurrencyChangedImpl> get copyWith =>
      __$$CurrencyChangedImplCopyWithImpl<_$CurrencyChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyType currency) currencyChanged,
    required TResult Function() needCurrencyLoad,
    required TResult Function(SimpleResponse<CurrencyType> response) reload,
  }) {
    return currencyChanged(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurrencyType currency)? currencyChanged,
    TResult? Function()? needCurrencyLoad,
    TResult? Function(SimpleResponse<CurrencyType> response)? reload,
  }) {
    return currencyChanged?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyType currency)? currencyChanged,
    TResult Function()? needCurrencyLoad,
    TResult Function(SimpleResponse<CurrencyType> response)? reload,
    required TResult orElse(),
  }) {
    if (currencyChanged != null) {
      return currencyChanged(currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(NeedCurrencyLoad value) needCurrencyLoad,
    required TResult Function(CurrencyReload value) reload,
  }) {
    return currencyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(NeedCurrencyLoad value)? needCurrencyLoad,
    TResult? Function(CurrencyReload value)? reload,
  }) {
    return currencyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(NeedCurrencyLoad value)? needCurrencyLoad,
    TResult Function(CurrencyReload value)? reload,
    required TResult orElse(),
  }) {
    if (currencyChanged != null) {
      return currencyChanged(this);
    }
    return orElse();
  }
}

abstract class CurrencyChanged implements CurrencyEvent {
  factory CurrencyChanged(final CurrencyType currency) = _$CurrencyChangedImpl;

  CurrencyType get currency;
  @JsonKey(ignore: true)
  _$$CurrencyChangedImplCopyWith<_$CurrencyChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeedCurrencyLoadImplCopyWith<$Res> {
  factory _$$NeedCurrencyLoadImplCopyWith(_$NeedCurrencyLoadImpl value,
          $Res Function(_$NeedCurrencyLoadImpl) then) =
      __$$NeedCurrencyLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NeedCurrencyLoadImplCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res, _$NeedCurrencyLoadImpl>
    implements _$$NeedCurrencyLoadImplCopyWith<$Res> {
  __$$NeedCurrencyLoadImplCopyWithImpl(_$NeedCurrencyLoadImpl _value,
      $Res Function(_$NeedCurrencyLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NeedCurrencyLoadImpl implements NeedCurrencyLoad {
  _$NeedCurrencyLoadImpl();

  @override
  String toString() {
    return 'CurrencyEvent.needCurrencyLoad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NeedCurrencyLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyType currency) currencyChanged,
    required TResult Function() needCurrencyLoad,
    required TResult Function(SimpleResponse<CurrencyType> response) reload,
  }) {
    return needCurrencyLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurrencyType currency)? currencyChanged,
    TResult? Function()? needCurrencyLoad,
    TResult? Function(SimpleResponse<CurrencyType> response)? reload,
  }) {
    return needCurrencyLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyType currency)? currencyChanged,
    TResult Function()? needCurrencyLoad,
    TResult Function(SimpleResponse<CurrencyType> response)? reload,
    required TResult orElse(),
  }) {
    if (needCurrencyLoad != null) {
      return needCurrencyLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(NeedCurrencyLoad value) needCurrencyLoad,
    required TResult Function(CurrencyReload value) reload,
  }) {
    return needCurrencyLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(NeedCurrencyLoad value)? needCurrencyLoad,
    TResult? Function(CurrencyReload value)? reload,
  }) {
    return needCurrencyLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(NeedCurrencyLoad value)? needCurrencyLoad,
    TResult Function(CurrencyReload value)? reload,
    required TResult orElse(),
  }) {
    if (needCurrencyLoad != null) {
      return needCurrencyLoad(this);
    }
    return orElse();
  }
}

abstract class NeedCurrencyLoad implements CurrencyEvent {
  factory NeedCurrencyLoad() = _$NeedCurrencyLoadImpl;
}

/// @nodoc
abstract class _$$CurrencyReloadImplCopyWith<$Res> {
  factory _$$CurrencyReloadImplCopyWith(_$CurrencyReloadImpl value,
          $Res Function(_$CurrencyReloadImpl) then) =
      __$$CurrencyReloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleResponse<CurrencyType> response});

  $SimpleResponseCopyWith<CurrencyType, $Res> get response;
}

/// @nodoc
class __$$CurrencyReloadImplCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res, _$CurrencyReloadImpl>
    implements _$$CurrencyReloadImplCopyWith<$Res> {
  __$$CurrencyReloadImplCopyWithImpl(
      _$CurrencyReloadImpl _value, $Res Function(_$CurrencyReloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$CurrencyReloadImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SimpleResponse<CurrencyType>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleResponseCopyWith<CurrencyType, $Res> get response {
    return $SimpleResponseCopyWith<CurrencyType, $Res>(_value.response,
        (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$CurrencyReloadImpl implements CurrencyReload {
  _$CurrencyReloadImpl(this.response);

  @override
  final SimpleResponse<CurrencyType> response;

  @override
  String toString() {
    return 'CurrencyEvent.reload(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyReloadImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyReloadImplCopyWith<_$CurrencyReloadImpl> get copyWith =>
      __$$CurrencyReloadImplCopyWithImpl<_$CurrencyReloadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CurrencyType currency) currencyChanged,
    required TResult Function() needCurrencyLoad,
    required TResult Function(SimpleResponse<CurrencyType> response) reload,
  }) {
    return reload(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CurrencyType currency)? currencyChanged,
    TResult? Function()? needCurrencyLoad,
    TResult? Function(SimpleResponse<CurrencyType> response)? reload,
  }) {
    return reload?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CurrencyType currency)? currencyChanged,
    TResult Function()? needCurrencyLoad,
    TResult Function(SimpleResponse<CurrencyType> response)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyChanged value) currencyChanged,
    required TResult Function(NeedCurrencyLoad value) needCurrencyLoad,
    required TResult Function(CurrencyReload value) reload,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyChanged value)? currencyChanged,
    TResult? Function(NeedCurrencyLoad value)? needCurrencyLoad,
    TResult? Function(CurrencyReload value)? reload,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyChanged value)? currencyChanged,
    TResult Function(NeedCurrencyLoad value)? needCurrencyLoad,
    TResult Function(CurrencyReload value)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class CurrencyReload implements CurrencyEvent {
  factory CurrencyReload(final SimpleResponse<CurrencyType> response) =
      _$CurrencyReloadImpl;

  SimpleResponse<CurrencyType> get response;
  @JsonKey(ignore: true)
  _$$CurrencyReloadImplCopyWith<_$CurrencyReloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrencyState {
  CurrencyType get currency => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CurrencyType currency) $default, {
    required TResult Function(CurrencyType currency, String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CurrencyType currency)? $default, {
    TResult? Function(CurrencyType currency, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CurrencyType currency)? $default, {
    TResult Function(CurrencyType currency, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CurrencyState value) $default, {
    required TResult Function(_CurrencyErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CurrencyState value)? $default, {
    TResult? Function(_CurrencyErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CurrencyState value)? $default, {
    TResult Function(_CurrencyErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyStateCopyWith<CurrencyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyStateCopyWith<$Res> {
  factory $CurrencyStateCopyWith(
          CurrencyState value, $Res Function(CurrencyState) then) =
      _$CurrencyStateCopyWithImpl<$Res, CurrencyState>;
  @useResult
  $Res call({CurrencyType currency});
}

/// @nodoc
class _$CurrencyStateCopyWithImpl<$Res, $Val extends CurrencyState>
    implements $CurrencyStateCopyWith<$Res> {
  _$CurrencyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyStateImplCopyWith<$Res>
    implements $CurrencyStateCopyWith<$Res> {
  factory _$$CurrencyStateImplCopyWith(
          _$CurrencyStateImpl value, $Res Function(_$CurrencyStateImpl) then) =
      __$$CurrencyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurrencyType currency});
}

/// @nodoc
class __$$CurrencyStateImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyStateImpl>
    implements _$$CurrencyStateImplCopyWith<$Res> {
  __$$CurrencyStateImplCopyWithImpl(
      _$CurrencyStateImpl _value, $Res Function(_$CurrencyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
  }) {
    return _then(_$CurrencyStateImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
    ));
  }
}

/// @nodoc

class _$CurrencyStateImpl implements _CurrencyState {
  const _$CurrencyStateImpl({required this.currency});

  @override
  final CurrencyType currency;

  @override
  String toString() {
    return 'CurrencyState(currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyStateImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyStateImplCopyWith<_$CurrencyStateImpl> get copyWith =>
      __$$CurrencyStateImplCopyWithImpl<_$CurrencyStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CurrencyType currency) $default, {
    required TResult Function(CurrencyType currency, String errorMessage) error,
  }) {
    return $default(currency);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CurrencyType currency)? $default, {
    TResult? Function(CurrencyType currency, String errorMessage)? error,
  }) {
    return $default?.call(currency);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CurrencyType currency)? $default, {
    TResult Function(CurrencyType currency, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(currency);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CurrencyState value) $default, {
    required TResult Function(_CurrencyErrorState value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CurrencyState value)? $default, {
    TResult? Function(_CurrencyErrorState value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CurrencyState value)? $default, {
    TResult Function(_CurrencyErrorState value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CurrencyState implements CurrencyState {
  const factory _CurrencyState({required final CurrencyType currency}) =
      _$CurrencyStateImpl;

  @override
  CurrencyType get currency;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyStateImplCopyWith<_$CurrencyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyErrorStateImplCopyWith<$Res>
    implements $CurrencyStateCopyWith<$Res> {
  factory _$$CurrencyErrorStateImplCopyWith(_$CurrencyErrorStateImpl value,
          $Res Function(_$CurrencyErrorStateImpl) then) =
      __$$CurrencyErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CurrencyType currency, String errorMessage});
}

/// @nodoc
class __$$CurrencyErrorStateImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyErrorStateImpl>
    implements _$$CurrencyErrorStateImplCopyWith<$Res> {
  __$$CurrencyErrorStateImplCopyWithImpl(_$CurrencyErrorStateImpl _value,
      $Res Function(_$CurrencyErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? errorMessage = null,
  }) {
    return _then(_$CurrencyErrorStateImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as CurrencyType,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrencyErrorStateImpl implements _CurrencyErrorState {
  const _$CurrencyErrorStateImpl(
      {required this.currency, required this.errorMessage});

  @override
  final CurrencyType currency;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CurrencyState.error(currency: $currency, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyErrorStateImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyErrorStateImplCopyWith<_$CurrencyErrorStateImpl> get copyWith =>
      __$$CurrencyErrorStateImplCopyWithImpl<_$CurrencyErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CurrencyType currency) $default, {
    required TResult Function(CurrencyType currency, String errorMessage) error,
  }) {
    return error(currency, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CurrencyType currency)? $default, {
    TResult? Function(CurrencyType currency, String errorMessage)? error,
  }) {
    return error?.call(currency, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CurrencyType currency)? $default, {
    TResult Function(CurrencyType currency, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(currency, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CurrencyState value) $default, {
    required TResult Function(_CurrencyErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CurrencyState value)? $default, {
    TResult? Function(_CurrencyErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CurrencyState value)? $default, {
    TResult Function(_CurrencyErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CurrencyErrorState implements CurrencyState {
  const factory _CurrencyErrorState(
      {required final CurrencyType currency,
      required final String errorMessage}) = _$CurrencyErrorStateImpl;

  @override
  CurrencyType get currency;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyErrorStateImplCopyWith<_$CurrencyErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
