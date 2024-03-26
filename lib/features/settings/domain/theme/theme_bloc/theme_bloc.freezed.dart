// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomThemeMode themeMode) themeChanged,
    required TResult Function() needThemeLoad,
    required TResult Function(SimpleResponse<CustomThemeMode> response) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomThemeMode themeMode)? themeChanged,
    TResult? Function()? needThemeLoad,
    TResult? Function(SimpleResponse<CustomThemeMode> response)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomThemeMode themeMode)? themeChanged,
    TResult Function()? needThemeLoad,
    TResult Function(SimpleResponse<CustomThemeMode> response)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(NeedThemeLoad value) needThemeLoad,
    required TResult Function(ThemeReload value) reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(NeedThemeLoad value)? needThemeLoad,
    TResult? Function(ThemeReload value)? reload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(NeedThemeLoad value)? needThemeLoad,
    TResult Function(ThemeReload value)? reload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeChangedImplCopyWith<$Res> {
  factory _$$ThemeChangedImplCopyWith(
          _$ThemeChangedImpl value, $Res Function(_$ThemeChangedImpl) then) =
      __$$ThemeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomThemeMode themeMode});
}

/// @nodoc
class __$$ThemeChangedImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeChangedImpl>
    implements _$$ThemeChangedImplCopyWith<$Res> {
  __$$ThemeChangedImplCopyWithImpl(
      _$ThemeChangedImpl _value, $Res Function(_$ThemeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ThemeChangedImpl(
      null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as CustomThemeMode,
    ));
  }
}

/// @nodoc

class _$ThemeChangedImpl implements ThemeChanged {
  _$ThemeChangedImpl(this.themeMode);

  @override
  final CustomThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeEvent.themeChanged(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChangedImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      __$$ThemeChangedImplCopyWithImpl<_$ThemeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomThemeMode themeMode) themeChanged,
    required TResult Function() needThemeLoad,
    required TResult Function(SimpleResponse<CustomThemeMode> response) reload,
  }) {
    return themeChanged(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomThemeMode themeMode)? themeChanged,
    TResult? Function()? needThemeLoad,
    TResult? Function(SimpleResponse<CustomThemeMode> response)? reload,
  }) {
    return themeChanged?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomThemeMode themeMode)? themeChanged,
    TResult Function()? needThemeLoad,
    TResult Function(SimpleResponse<CustomThemeMode> response)? reload,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(NeedThemeLoad value) needThemeLoad,
    required TResult Function(ThemeReload value) reload,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(NeedThemeLoad value)? needThemeLoad,
    TResult? Function(ThemeReload value)? reload,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(NeedThemeLoad value)? needThemeLoad,
    TResult Function(ThemeReload value)? reload,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class ThemeChanged implements ThemeEvent {
  factory ThemeChanged(final CustomThemeMode themeMode) = _$ThemeChangedImpl;

  CustomThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NeedThemeLoadImplCopyWith<$Res> {
  factory _$$NeedThemeLoadImplCopyWith(
          _$NeedThemeLoadImpl value, $Res Function(_$NeedThemeLoadImpl) then) =
      __$$NeedThemeLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NeedThemeLoadImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$NeedThemeLoadImpl>
    implements _$$NeedThemeLoadImplCopyWith<$Res> {
  __$$NeedThemeLoadImplCopyWithImpl(
      _$NeedThemeLoadImpl _value, $Res Function(_$NeedThemeLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NeedThemeLoadImpl implements NeedThemeLoad {
  _$NeedThemeLoadImpl();

  @override
  String toString() {
    return 'ThemeEvent.needThemeLoad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NeedThemeLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomThemeMode themeMode) themeChanged,
    required TResult Function() needThemeLoad,
    required TResult Function(SimpleResponse<CustomThemeMode> response) reload,
  }) {
    return needThemeLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomThemeMode themeMode)? themeChanged,
    TResult? Function()? needThemeLoad,
    TResult? Function(SimpleResponse<CustomThemeMode> response)? reload,
  }) {
    return needThemeLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomThemeMode themeMode)? themeChanged,
    TResult Function()? needThemeLoad,
    TResult Function(SimpleResponse<CustomThemeMode> response)? reload,
    required TResult orElse(),
  }) {
    if (needThemeLoad != null) {
      return needThemeLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(NeedThemeLoad value) needThemeLoad,
    required TResult Function(ThemeReload value) reload,
  }) {
    return needThemeLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(NeedThemeLoad value)? needThemeLoad,
    TResult? Function(ThemeReload value)? reload,
  }) {
    return needThemeLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(NeedThemeLoad value)? needThemeLoad,
    TResult Function(ThemeReload value)? reload,
    required TResult orElse(),
  }) {
    if (needThemeLoad != null) {
      return needThemeLoad(this);
    }
    return orElse();
  }
}

abstract class NeedThemeLoad implements ThemeEvent {
  factory NeedThemeLoad() = _$NeedThemeLoadImpl;
}

/// @nodoc
abstract class _$$ThemeReloadImplCopyWith<$Res> {
  factory _$$ThemeReloadImplCopyWith(
          _$ThemeReloadImpl value, $Res Function(_$ThemeReloadImpl) then) =
      __$$ThemeReloadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SimpleResponse<CustomThemeMode> response});

  $SimpleResponseCopyWith<CustomThemeMode, $Res> get response;
}

/// @nodoc
class __$$ThemeReloadImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeReloadImpl>
    implements _$$ThemeReloadImplCopyWith<$Res> {
  __$$ThemeReloadImplCopyWithImpl(
      _$ThemeReloadImpl _value, $Res Function(_$ThemeReloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$ThemeReloadImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as SimpleResponse<CustomThemeMode>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleResponseCopyWith<CustomThemeMode, $Res> get response {
    return $SimpleResponseCopyWith<CustomThemeMode, $Res>(_value.response,
        (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$ThemeReloadImpl implements ThemeReload {
  _$ThemeReloadImpl(this.response);

  @override
  final SimpleResponse<CustomThemeMode> response;

  @override
  String toString() {
    return 'ThemeEvent.reload(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeReloadImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeReloadImplCopyWith<_$ThemeReloadImpl> get copyWith =>
      __$$ThemeReloadImplCopyWithImpl<_$ThemeReloadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomThemeMode themeMode) themeChanged,
    required TResult Function() needThemeLoad,
    required TResult Function(SimpleResponse<CustomThemeMode> response) reload,
  }) {
    return reload(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomThemeMode themeMode)? themeChanged,
    TResult? Function()? needThemeLoad,
    TResult? Function(SimpleResponse<CustomThemeMode> response)? reload,
  }) {
    return reload?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomThemeMode themeMode)? themeChanged,
    TResult Function()? needThemeLoad,
    TResult Function(SimpleResponse<CustomThemeMode> response)? reload,
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
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(NeedThemeLoad value) needThemeLoad,
    required TResult Function(ThemeReload value) reload,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(NeedThemeLoad value)? needThemeLoad,
    TResult? Function(ThemeReload value)? reload,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(NeedThemeLoad value)? needThemeLoad,
    TResult Function(ThemeReload value)? reload,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class ThemeReload implements ThemeEvent {
  factory ThemeReload(final SimpleResponse<CustomThemeMode> response) =
      _$ThemeReloadImpl;

  SimpleResponse<CustomThemeMode> get response;
  @JsonKey(ignore: true)
  _$$ThemeReloadImplCopyWith<_$ThemeReloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  CustomThemeMode get themeMode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CustomThemeMode themeMode) $default, {
    required TResult Function(CustomThemeMode themeMode, String errorMessage)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CustomThemeMode themeMode)? $default, {
    TResult? Function(CustomThemeMode themeMode, String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CustomThemeMode themeMode)? $default, {
    TResult Function(CustomThemeMode themeMode, String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ThemeState value) $default, {
    required TResult Function(_ThemeErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ThemeState value)? $default, {
    TResult? Function(_ThemeErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ThemeState value)? $default, {
    TResult Function(_ThemeErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
  @useResult
  $Res call({CustomThemeMode themeMode});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as CustomThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeStateImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$ThemeStateImplCopyWith(
          _$ThemeStateImpl value, $Res Function(_$ThemeStateImpl) then) =
      __$$ThemeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomThemeMode themeMode});
}

/// @nodoc
class __$$ThemeStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeStateImpl>
    implements _$$ThemeStateImplCopyWith<$Res> {
  __$$ThemeStateImplCopyWithImpl(
      _$ThemeStateImpl _value, $Res Function(_$ThemeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ThemeStateImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as CustomThemeMode,
    ));
  }
}

/// @nodoc

class _$ThemeStateImpl implements _ThemeState {
  const _$ThemeStateImpl({required this.themeMode});

  @override
  final CustomThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeState(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeStateImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      __$$ThemeStateImplCopyWithImpl<_$ThemeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CustomThemeMode themeMode) $default, {
    required TResult Function(CustomThemeMode themeMode, String errorMessage)
        error,
  }) {
    return $default(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CustomThemeMode themeMode)? $default, {
    TResult? Function(CustomThemeMode themeMode, String errorMessage)? error,
  }) {
    return $default?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CustomThemeMode themeMode)? $default, {
    TResult Function(CustomThemeMode themeMode, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ThemeState value) $default, {
    required TResult Function(_ThemeErrorState value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ThemeState value)? $default, {
    TResult? Function(_ThemeErrorState value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ThemeState value)? $default, {
    TResult Function(_ThemeErrorState value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState({required final CustomThemeMode themeMode}) =
      _$ThemeStateImpl;

  @override
  CustomThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$ThemeStateImplCopyWith<_$ThemeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeErrorStateImplCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$ThemeErrorStateImplCopyWith(_$ThemeErrorStateImpl value,
          $Res Function(_$ThemeErrorStateImpl) then) =
      __$$ThemeErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CustomThemeMode themeMode, String errorMessage});
}

/// @nodoc
class __$$ThemeErrorStateImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeErrorStateImpl>
    implements _$$ThemeErrorStateImplCopyWith<$Res> {
  __$$ThemeErrorStateImplCopyWithImpl(
      _$ThemeErrorStateImpl _value, $Res Function(_$ThemeErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ThemeErrorStateImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as CustomThemeMode,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThemeErrorStateImpl implements _ThemeErrorState {
  const _$ThemeErrorStateImpl(
      {required this.themeMode, required this.errorMessage});

  @override
  final CustomThemeMode themeMode;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ThemeState.error(themeMode: $themeMode, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeErrorStateImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeErrorStateImplCopyWith<_$ThemeErrorStateImpl> get copyWith =>
      __$$ThemeErrorStateImplCopyWithImpl<_$ThemeErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CustomThemeMode themeMode) $default, {
    required TResult Function(CustomThemeMode themeMode, String errorMessage)
        error,
  }) {
    return error(themeMode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CustomThemeMode themeMode)? $default, {
    TResult? Function(CustomThemeMode themeMode, String errorMessage)? error,
  }) {
    return error?.call(themeMode, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CustomThemeMode themeMode)? $default, {
    TResult Function(CustomThemeMode themeMode, String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(themeMode, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ThemeState value) $default, {
    required TResult Function(_ThemeErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ThemeState value)? $default, {
    TResult? Function(_ThemeErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ThemeState value)? $default, {
    TResult Function(_ThemeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ThemeErrorState implements ThemeState {
  const factory _ThemeErrorState(
      {required final CustomThemeMode themeMode,
      required final String errorMessage}) = _$ThemeErrorStateImpl;

  @override
  CustomThemeMode get themeMode;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ThemeErrorStateImplCopyWith<_$ThemeErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
