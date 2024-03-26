// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimpleResponse<T> {
  T? get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? payload) ok,
    required TResult Function(String message, T? payload) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? payload)? ok,
    TResult? Function(String message, T? payload)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? payload)? ok,
    TResult Function(String message, T? payload)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SimpleOkResponse<T> value) ok,
    required TResult Function(_SimpleErrorResponse<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SimpleOkResponse<T> value)? ok,
    TResult? Function(_SimpleErrorResponse<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SimpleOkResponse<T> value)? ok,
    TResult Function(_SimpleErrorResponse<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimpleResponseCopyWith<T, SimpleResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleResponseCopyWith<T, $Res> {
  factory $SimpleResponseCopyWith(
          SimpleResponse<T> value, $Res Function(SimpleResponse<T>) then) =
      _$SimpleResponseCopyWithImpl<T, $Res, SimpleResponse<T>>;
  @useResult
  $Res call({T? payload});
}

/// @nodoc
class _$SimpleResponseCopyWithImpl<T, $Res, $Val extends SimpleResponse<T>>
    implements $SimpleResponseCopyWith<T, $Res> {
  _$SimpleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleOkResponseImplCopyWith<T, $Res>
    implements $SimpleResponseCopyWith<T, $Res> {
  factory _$$SimpleOkResponseImplCopyWith(_$SimpleOkResponseImpl<T> value,
          $Res Function(_$SimpleOkResponseImpl<T>) then) =
      __$$SimpleOkResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? payload});
}

/// @nodoc
class __$$SimpleOkResponseImplCopyWithImpl<T, $Res>
    extends _$SimpleResponseCopyWithImpl<T, $Res, _$SimpleOkResponseImpl<T>>
    implements _$$SimpleOkResponseImplCopyWith<T, $Res> {
  __$$SimpleOkResponseImplCopyWithImpl(_$SimpleOkResponseImpl<T> _value,
      $Res Function(_$SimpleOkResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = freezed,
  }) {
    return _then(_$SimpleOkResponseImpl<T>(
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$SimpleOkResponseImpl<T> implements _SimpleOkResponse<T> {
  const _$SimpleOkResponseImpl({required this.payload});

  @override
  final T? payload;

  @override
  String toString() {
    return 'SimpleResponse<$T>.ok(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleOkResponseImpl<T> &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleOkResponseImplCopyWith<T, _$SimpleOkResponseImpl<T>> get copyWith =>
      __$$SimpleOkResponseImplCopyWithImpl<T, _$SimpleOkResponseImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? payload) ok,
    required TResult Function(String message, T? payload) error,
  }) {
    return ok(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? payload)? ok,
    TResult? Function(String message, T? payload)? error,
  }) {
    return ok?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? payload)? ok,
    TResult Function(String message, T? payload)? error,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SimpleOkResponse<T> value) ok,
    required TResult Function(_SimpleErrorResponse<T> value) error,
  }) {
    return ok(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SimpleOkResponse<T> value)? ok,
    TResult? Function(_SimpleErrorResponse<T> value)? error,
  }) {
    return ok?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SimpleOkResponse<T> value)? ok,
    TResult Function(_SimpleErrorResponse<T> value)? error,
    required TResult orElse(),
  }) {
    if (ok != null) {
      return ok(this);
    }
    return orElse();
  }
}

abstract class _SimpleOkResponse<T> implements SimpleResponse<T> {
  const factory _SimpleOkResponse({required final T? payload}) =
      _$SimpleOkResponseImpl<T>;

  @override
  T? get payload;
  @override
  @JsonKey(ignore: true)
  _$$SimpleOkResponseImplCopyWith<T, _$SimpleOkResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SimpleErrorResponseImplCopyWith<T, $Res>
    implements $SimpleResponseCopyWith<T, $Res> {
  factory _$$SimpleErrorResponseImplCopyWith(_$SimpleErrorResponseImpl<T> value,
          $Res Function(_$SimpleErrorResponseImpl<T>) then) =
      __$$SimpleErrorResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String message, T? payload});
}

/// @nodoc
class __$$SimpleErrorResponseImplCopyWithImpl<T, $Res>
    extends _$SimpleResponseCopyWithImpl<T, $Res, _$SimpleErrorResponseImpl<T>>
    implements _$$SimpleErrorResponseImplCopyWith<T, $Res> {
  __$$SimpleErrorResponseImplCopyWithImpl(_$SimpleErrorResponseImpl<T> _value,
      $Res Function(_$SimpleErrorResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? payload = freezed,
  }) {
    return _then(_$SimpleErrorResponseImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$SimpleErrorResponseImpl<T> implements _SimpleErrorResponse<T> {
  const _$SimpleErrorResponseImpl(
      {required this.message, required this.payload});

  @override
  final String message;
  @override
  final T? payload;

  @override
  String toString() {
    return 'SimpleResponse<$T>.error(message: $message, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleErrorResponseImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleErrorResponseImplCopyWith<T, _$SimpleErrorResponseImpl<T>>
      get copyWith => __$$SimpleErrorResponseImplCopyWithImpl<T,
          _$SimpleErrorResponseImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? payload) ok,
    required TResult Function(String message, T? payload) error,
  }) {
    return error(message, payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? payload)? ok,
    TResult? Function(String message, T? payload)? error,
  }) {
    return error?.call(message, payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? payload)? ok,
    TResult Function(String message, T? payload)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SimpleOkResponse<T> value) ok,
    required TResult Function(_SimpleErrorResponse<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SimpleOkResponse<T> value)? ok,
    TResult? Function(_SimpleErrorResponse<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SimpleOkResponse<T> value)? ok,
    TResult Function(_SimpleErrorResponse<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SimpleErrorResponse<T> implements SimpleResponse<T> {
  const factory _SimpleErrorResponse(
      {required final String message,
      required final T? payload}) = _$SimpleErrorResponseImpl<T>;

  String get message;
  @override
  T? get payload;
  @override
  @JsonKey(ignore: true)
  _$$SimpleErrorResponseImplCopyWith<T, _$SimpleErrorResponseImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
