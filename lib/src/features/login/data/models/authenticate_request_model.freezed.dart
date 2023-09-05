// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticateRequestModel _$AuthenticateRequestModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticateRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateRequestModel {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateRequestModelCopyWith<AuthenticateRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateRequestModelCopyWith<$Res> {
  factory $AuthenticateRequestModelCopyWith(AuthenticateRequestModel value,
          $Res Function(AuthenticateRequestModel) then) =
      _$AuthenticateRequestModelCopyWithImpl<$Res, AuthenticateRequestModel>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$AuthenticateRequestModelCopyWithImpl<$Res,
        $Val extends AuthenticateRequestModel>
    implements $AuthenticateRequestModelCopyWith<$Res> {
  _$AuthenticateRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticateRequestModelCopyWith<$Res>
    implements $AuthenticateRequestModelCopyWith<$Res> {
  factory _$$_AuthenticateRequestModelCopyWith(
          _$_AuthenticateRequestModel value,
          $Res Function(_$_AuthenticateRequestModel) then) =
      __$$_AuthenticateRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$_AuthenticateRequestModelCopyWithImpl<$Res>
    extends _$AuthenticateRequestModelCopyWithImpl<$Res,
        _$_AuthenticateRequestModel>
    implements _$$_AuthenticateRequestModelCopyWith<$Res> {
  __$$_AuthenticateRequestModelCopyWithImpl(_$_AuthenticateRequestModel _value,
      $Res Function(_$_AuthenticateRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$_AuthenticateRequestModel(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticateRequestModel implements _AuthenticateRequestModel {
  _$_AuthenticateRequestModel({required this.username, required this.password});

  factory _$_AuthenticateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticateRequestModelFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticateRequestModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticateRequestModel &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticateRequestModelCopyWith<_$_AuthenticateRequestModel>
      get copyWith => __$$_AuthenticateRequestModelCopyWithImpl<
          _$_AuthenticateRequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticateRequestModelToJson(
      this,
    );
  }
}

abstract class _AuthenticateRequestModel implements AuthenticateRequestModel {
  factory _AuthenticateRequestModel(
      {required final String username,
      required final String password}) = _$_AuthenticateRequestModel;

  factory _AuthenticateRequestModel.fromJson(Map<String, dynamic> json) =
      _$_AuthenticateRequestModel.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticateRequestModelCopyWith<_$_AuthenticateRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
