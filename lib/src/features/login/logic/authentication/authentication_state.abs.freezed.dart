// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IAuthenticateResponseEntity data) data,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IAuthenticateResponseEntity data)? data,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IAuthenticateResponseEntity data)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStateInitial value) initial,
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateData value) data,
    required TResult Function(_AuthenticationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateInitial value)? initial,
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateData value)? data,
    TResult? Function(_AuthenticationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateInitial value)? initial,
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateData value)? data,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthenticationStateInitialCopyWith<$Res> {
  factory _$$_AuthenticationStateInitialCopyWith(
          _$_AuthenticationStateInitial value,
          $Res Function(_$_AuthenticationStateInitial) then) =
      __$$_AuthenticationStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationStateInitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$_AuthenticationStateInitial>
    implements _$$_AuthenticationStateInitialCopyWith<$Res> {
  __$$_AuthenticationStateInitialCopyWithImpl(
      _$_AuthenticationStateInitial _value,
      $Res Function(_$_AuthenticationStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationStateInitial implements _AuthenticationStateInitial {
  _$_AuthenticationStateInitial();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IAuthenticateResponseEntity data) data,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IAuthenticateResponseEntity data)? data,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IAuthenticateResponseEntity data)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStateInitial value) initial,
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateData value) data,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateInitial value)? initial,
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateData value)? data,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateInitial value)? initial,
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateData value)? data,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateInitial implements AuthenticationState {
  factory _AuthenticationStateInitial() = _$_AuthenticationStateInitial;
}

/// @nodoc
abstract class _$$_AuthenticationStateLoadingCopyWith<$Res> {
  factory _$$_AuthenticationStateLoadingCopyWith(
          _$_AuthenticationStateLoading value,
          $Res Function(_$_AuthenticationStateLoading) then) =
      __$$_AuthenticationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationStateLoadingCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$_AuthenticationStateLoading>
    implements _$$_AuthenticationStateLoadingCopyWith<$Res> {
  __$$_AuthenticationStateLoadingCopyWithImpl(
      _$_AuthenticationStateLoading _value,
      $Res Function(_$_AuthenticationStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationStateLoading implements _AuthenticationStateLoading {
  _$_AuthenticationStateLoading();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IAuthenticateResponseEntity data) data,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IAuthenticateResponseEntity data)? data,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IAuthenticateResponseEntity data)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStateInitial value) initial,
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateData value) data,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateInitial value)? initial,
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateData value)? data,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateInitial value)? initial,
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateData value)? data,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateLoading implements AuthenticationState {
  factory _AuthenticationStateLoading() = _$_AuthenticationStateLoading;
}

/// @nodoc
abstract class _$$_AuthenticationStateDataCopyWith<$Res> {
  factory _$$_AuthenticationStateDataCopyWith(_$_AuthenticationStateData value,
          $Res Function(_$_AuthenticationStateData) then) =
      __$$_AuthenticationStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({IAuthenticateResponseEntity data});
}

/// @nodoc
class __$$_AuthenticationStateDataCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_AuthenticationStateData>
    implements _$$_AuthenticationStateDataCopyWith<$Res> {
  __$$_AuthenticationStateDataCopyWithImpl(_$_AuthenticationStateData _value,
      $Res Function(_$_AuthenticationStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AuthenticationStateData(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as IAuthenticateResponseEntity,
    ));
  }
}

/// @nodoc

class _$_AuthenticationStateData implements _AuthenticationStateData {
  _$_AuthenticationStateData({required this.data});

  @override
  final IAuthenticateResponseEntity data;

  @override
  String toString() {
    return 'AuthenticationState.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStateData &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationStateDataCopyWith<_$_AuthenticationStateData>
      get copyWith =>
          __$$_AuthenticationStateDataCopyWithImpl<_$_AuthenticationStateData>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IAuthenticateResponseEntity data) data,
    required TResult Function() error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IAuthenticateResponseEntity data)? data,
    TResult? Function()? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IAuthenticateResponseEntity data)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStateInitial value) initial,
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateData value) data,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateInitial value)? initial,
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateData value)? data,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateInitial value)? initial,
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateData value)? data,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateData implements AuthenticationState {
  factory _AuthenticationStateData(
          {required final IAuthenticateResponseEntity data}) =
      _$_AuthenticationStateData;

  IAuthenticateResponseEntity get data;
  @JsonKey(ignore: true)
  _$$_AuthenticationStateDataCopyWith<_$_AuthenticationStateData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticationStateErrorCopyWith<$Res> {
  factory _$$_AuthenticationStateErrorCopyWith(
          _$_AuthenticationStateError value,
          $Res Function(_$_AuthenticationStateError) then) =
      __$$_AuthenticationStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationStateErrorCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_AuthenticationStateError>
    implements _$$_AuthenticationStateErrorCopyWith<$Res> {
  __$$_AuthenticationStateErrorCopyWithImpl(_$_AuthenticationStateError _value,
      $Res Function(_$_AuthenticationStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationStateError implements _AuthenticationStateError {
  _$_AuthenticationStateError();

  @override
  String toString() {
    return 'AuthenticationState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(IAuthenticateResponseEntity data) data,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(IAuthenticateResponseEntity data)? data,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(IAuthenticateResponseEntity data)? data,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStateInitial value) initial,
    required TResult Function(_AuthenticationStateLoading value) loading,
    required TResult Function(_AuthenticationStateData value) data,
    required TResult Function(_AuthenticationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStateInitial value)? initial,
    TResult? Function(_AuthenticationStateLoading value)? loading,
    TResult? Function(_AuthenticationStateData value)? data,
    TResult? Function(_AuthenticationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStateInitial value)? initial,
    TResult Function(_AuthenticationStateLoading value)? loading,
    TResult Function(_AuthenticationStateData value)? data,
    TResult Function(_AuthenticationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStateError implements AuthenticationState {
  factory _AuthenticationStateError() = _$_AuthenticationStateError;
}
