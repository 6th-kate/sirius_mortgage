// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocaleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) localeChanged,
    required TResult Function() needLocaleLoad,
    required TResult Function(dynamic response) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String languageCode)? localeChanged,
    TResult? Function()? needLocaleLoad,
    TResult? Function(dynamic response)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? localeChanged,
    TResult Function()? needLocaleLoad,
    TResult Function(dynamic response)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocaleChanged value) localeChanged,
    required TResult Function(NeedLocaleLoad value) needLocaleLoad,
    required TResult Function(LocaleReload value) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocaleChanged value)? localeChanged,
    TResult? Function(NeedLocaleLoad value)? needLocaleLoad,
    TResult? Function(LocaleReload value)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(NeedLocaleLoad value)? needLocaleLoad,
    TResult Function(LocaleReload value)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleEventCopyWith<$Res> {
  factory $LocaleEventCopyWith(
          LocaleEvent value, $Res Function(LocaleEvent) then) =
      _$LocaleEventCopyWithImpl<$Res, LocaleEvent>;
}

/// @nodoc
class _$LocaleEventCopyWithImpl<$Res, $Val extends LocaleEvent>
    implements $LocaleEventCopyWith<$Res> {
  _$LocaleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocaleChangedImplCopyWith<$Res> {
  factory _$$LocaleChangedImplCopyWith(
          _$LocaleChangedImpl value, $Res Function(_$LocaleChangedImpl) then) =
      __$$LocaleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String languageCode});
}

/// @nodoc
class __$$LocaleChangedImplCopyWithImpl<$Res>
    extends _$LocaleEventCopyWithImpl<$Res, _$LocaleChangedImpl>
    implements _$$LocaleChangedImplCopyWith<$Res> {
  __$$LocaleChangedImplCopyWithImpl(
      _$LocaleChangedImpl _value, $Res Function(_$LocaleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$LocaleChangedImpl(
      null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocaleChangedImpl implements LocaleChanged {
  _$LocaleChangedImpl(this.languageCode);

  @override
  final String languageCode;

  @override
  String toString() {
    return 'LocaleEvent.localeChanged(languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleChangedImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleChangedImplCopyWith<_$LocaleChangedImpl> get copyWith =>
      __$$LocaleChangedImplCopyWithImpl<_$LocaleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) localeChanged,
    required TResult Function() needLocaleLoad,
    required TResult Function(dynamic response) reload,
  }) {
    return localeChanged(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String languageCode)? localeChanged,
    TResult? Function()? needLocaleLoad,
    TResult? Function(dynamic response)? reload,
  }) {
    return localeChanged?.call(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? localeChanged,
    TResult Function()? needLocaleLoad,
    TResult Function(dynamic response)? reload,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocaleChanged value) localeChanged,
    required TResult Function(NeedLocaleLoad value) needLocaleLoad,
    required TResult Function(LocaleReload value) reload,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocaleChanged value)? localeChanged,
    TResult? Function(NeedLocaleLoad value)? needLocaleLoad,
    TResult? Function(LocaleReload value)? reload,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(NeedLocaleLoad value)? needLocaleLoad,
    TResult Function(LocaleReload value)? reload,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class LocaleChanged implements LocaleEvent {
  factory LocaleChanged(final String languageCode) = _$LocaleChangedImpl;

  String get languageCode;
  @JsonKey(ignore: true)
  _$$LocaleChangedImplCopyWith<_$LocaleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeedLocaleLoadImplCopyWith<$Res> {
  factory _$$NeedLocaleLoadImplCopyWith(_$NeedLocaleLoadImpl value,
          $Res Function(_$NeedLocaleLoadImpl) then) =
      __$$NeedLocaleLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NeedLocaleLoadImplCopyWithImpl<$Res>
    extends _$LocaleEventCopyWithImpl<$Res, _$NeedLocaleLoadImpl>
    implements _$$NeedLocaleLoadImplCopyWith<$Res> {
  __$$NeedLocaleLoadImplCopyWithImpl(
      _$NeedLocaleLoadImpl _value, $Res Function(_$NeedLocaleLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NeedLocaleLoadImpl implements NeedLocaleLoad {
  _$NeedLocaleLoadImpl();

  @override
  String toString() {
    return 'LocaleEvent.needLocaleLoad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NeedLocaleLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) localeChanged,
    required TResult Function() needLocaleLoad,
    required TResult Function(dynamic response) reload,
  }) {
    return needLocaleLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String languageCode)? localeChanged,
    TResult? Function()? needLocaleLoad,
    TResult? Function(dynamic response)? reload,
  }) {
    return needLocaleLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? localeChanged,
    TResult Function()? needLocaleLoad,
    TResult Function(dynamic response)? reload,
    required TResult orElse(),
  }) {
    if (needLocaleLoad != null) {
      return needLocaleLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LocaleChanged value) localeChanged,
    required TResult Function(NeedLocaleLoad value) needLocaleLoad,
    required TResult Function(LocaleReload value) reload,
  }) {
    return needLocaleLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocaleChanged value)? localeChanged,
    TResult? Function(NeedLocaleLoad value)? needLocaleLoad,
    TResult? Function(LocaleReload value)? reload,
  }) {
    return needLocaleLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(NeedLocaleLoad value)? needLocaleLoad,
    TResult Function(LocaleReload value)? reload,
    required TResult orElse(),
  }) {
    if (needLocaleLoad != null) {
      return needLocaleLoad(this);
    }
    return orElse();
  }
}

abstract class NeedLocaleLoad implements LocaleEvent {
  factory NeedLocaleLoad() = _$NeedLocaleLoadImpl;
}

/// @nodoc
abstract class _$$LocaleReloadImplCopyWith<$Res> {
  factory _$$LocaleReloadImplCopyWith(
          _$LocaleReloadImpl value, $Res Function(_$LocaleReloadImpl) then) =
      __$$LocaleReloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic response});
}

/// @nodoc
class __$$LocaleReloadImplCopyWithImpl<$Res>
    extends _$LocaleEventCopyWithImpl<$Res, _$LocaleReloadImpl>
    implements _$$LocaleReloadImplCopyWith<$Res> {
  __$$LocaleReloadImplCopyWithImpl(
      _$LocaleReloadImpl _value, $Res Function(_$LocaleReloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$LocaleReloadImpl(
      freezed == response ? _value.response! : response,
    ));
  }
}

/// @nodoc

class _$LocaleReloadImpl implements LocaleReload {
  _$LocaleReloadImpl(this.response);

  @override
  final dynamic response;

  @override
  String toString() {
    return 'LocaleEvent.reload(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleReloadImpl &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleReloadImplCopyWith<_$LocaleReloadImpl> get copyWith =>
      __$$LocaleReloadImplCopyWithImpl<_$LocaleReloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) localeChanged,
    required TResult Function() needLocaleLoad,
    required TResult Function(dynamic response) reload,
  }) {
    return reload(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String languageCode)? localeChanged,
    TResult? Function()? needLocaleLoad,
    TResult? Function(dynamic response)? reload,
  }) {
    return reload?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? localeChanged,
    TResult Function()? needLocaleLoad,
    TResult Function(dynamic response)? reload,
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
    required TResult Function(LocaleChanged value) localeChanged,
    required TResult Function(NeedLocaleLoad value) needLocaleLoad,
    required TResult Function(LocaleReload value) reload,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LocaleChanged value)? localeChanged,
    TResult? Function(NeedLocaleLoad value)? needLocaleLoad,
    TResult? Function(LocaleReload value)? reload,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LocaleChanged value)? localeChanged,
    TResult Function(NeedLocaleLoad value)? needLocaleLoad,
    TResult Function(LocaleReload value)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class LocaleReload implements LocaleEvent {
  factory LocaleReload(final dynamic response) = _$LocaleReloadImpl;

  dynamic get response;
  @JsonKey(ignore: true)
  _$$LocaleReloadImplCopyWith<_$LocaleReloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocaleState {
  String get languageCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String languageCode) $default, {
    required TResult Function(String languageCode, String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String languageCode)? $default, {
    TResult? Function(String languageCode, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String languageCode)? $default, {
    TResult Function(String languageCode, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LocaleState value) $default, {
    required TResult Function(_LocaleErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LocaleState value)? $default, {
    TResult? Function(_LocaleErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LocaleState value)? $default, {
    TResult Function(_LocaleErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleStateCopyWith<LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res, LocaleState>;
  @useResult
  $Res call({String languageCode});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res, $Val extends LocaleState>
    implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocaleStateImplCopyWith<$Res>
    implements $LocaleStateCopyWith<$Res> {
  factory _$$LocaleStateImplCopyWith(
          _$LocaleStateImpl value, $Res Function(_$LocaleStateImpl) then) =
      __$$LocaleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String languageCode});
}

/// @nodoc
class __$$LocaleStateImplCopyWithImpl<$Res>
    extends _$LocaleStateCopyWithImpl<$Res, _$LocaleStateImpl>
    implements _$$LocaleStateImplCopyWith<$Res> {
  __$$LocaleStateImplCopyWithImpl(
      _$LocaleStateImpl _value, $Res Function(_$LocaleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$LocaleStateImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocaleStateImpl implements _LocaleState {
  const _$LocaleStateImpl({required this.languageCode});

  @override
  final String languageCode;

  @override
  String toString() {
    return 'LocaleState(languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleStateImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleStateImplCopyWith<_$LocaleStateImpl> get copyWith =>
      __$$LocaleStateImplCopyWithImpl<_$LocaleStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String languageCode) $default, {
    required TResult Function(String languageCode, String errorMessage) error,
  }) {
    return $default(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String languageCode)? $default, {
    TResult? Function(String languageCode, String errorMessage)? error,
  }) {
    return $default?.call(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String languageCode)? $default, {
    TResult Function(String languageCode, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LocaleState value) $default, {
    required TResult Function(_LocaleErrorState value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LocaleState value)? $default, {
    TResult? Function(_LocaleErrorState value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LocaleState value)? $default, {
    TResult Function(_LocaleErrorState value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LocaleState implements LocaleState {
  const factory _LocaleState({required final String languageCode}) =
      _$LocaleStateImpl;

  @override
  String get languageCode;
  @override
  @JsonKey(ignore: true)
  _$$LocaleStateImplCopyWith<_$LocaleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocaleErrorStateImplCopyWith<$Res>
    implements $LocaleStateCopyWith<$Res> {
  factory _$$LocaleErrorStateImplCopyWith(_$LocaleErrorStateImpl value,
          $Res Function(_$LocaleErrorStateImpl) then) =
      __$$LocaleErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String languageCode, String errorMessage});
}

/// @nodoc
class __$$LocaleErrorStateImplCopyWithImpl<$Res>
    extends _$LocaleStateCopyWithImpl<$Res, _$LocaleErrorStateImpl>
    implements _$$LocaleErrorStateImplCopyWith<$Res> {
  __$$LocaleErrorStateImplCopyWithImpl(_$LocaleErrorStateImpl _value,
      $Res Function(_$LocaleErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LocaleErrorStateImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocaleErrorStateImpl implements _LocaleErrorState {
  const _$LocaleErrorStateImpl(
      {required this.languageCode, required this.errorMessage});

  @override
  final String languageCode;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'LocaleState.error(languageCode: $languageCode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleErrorStateImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleErrorStateImplCopyWith<_$LocaleErrorStateImpl> get copyWith =>
      __$$LocaleErrorStateImplCopyWithImpl<_$LocaleErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String languageCode) $default, {
    required TResult Function(String languageCode, String errorMessage) error,
  }) {
    return error(languageCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String languageCode)? $default, {
    TResult? Function(String languageCode, String errorMessage)? error,
  }) {
    return error?.call(languageCode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String languageCode)? $default, {
    TResult Function(String languageCode, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(languageCode, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LocaleState value) $default, {
    required TResult Function(_LocaleErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LocaleState value)? $default, {
    TResult? Function(_LocaleErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LocaleState value)? $default, {
    TResult Function(_LocaleErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LocaleErrorState implements LocaleState {
  const factory _LocaleErrorState(
      {required final String languageCode,
      required final String errorMessage}) = _$LocaleErrorStateImpl;

  @override
  String get languageCode;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LocaleErrorStateImplCopyWith<_$LocaleErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
