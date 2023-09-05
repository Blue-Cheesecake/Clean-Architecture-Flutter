// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authenticate_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticateResponseModel _$AuthenticateResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticateResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticateResponseModel {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticateResponseModelCopyWith<AuthenticateResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticateResponseModelCopyWith<$Res> {
  factory $AuthenticateResponseModelCopyWith(AuthenticateResponseModel value,
          $Res Function(AuthenticateResponseModel) then) =
      _$AuthenticateResponseModelCopyWithImpl<$Res, AuthenticateResponseModel>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$AuthenticateResponseModelCopyWithImpl<$Res,
        $Val extends AuthenticateResponseModel>
    implements $AuthenticateResponseModelCopyWith<$Res> {
  _$AuthenticateResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticateResponseModelCopyWith<$Res>
    implements $AuthenticateResponseModelCopyWith<$Res> {
  factory _$$_AuthenticateResponseModelCopyWith(
          _$_AuthenticateResponseModel value,
          $Res Function(_$_AuthenticateResponseModel) then) =
      __$$_AuthenticateResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$_AuthenticateResponseModelCopyWithImpl<$Res>
    extends _$AuthenticateResponseModelCopyWithImpl<$Res,
        _$_AuthenticateResponseModel>
    implements _$$_AuthenticateResponseModelCopyWith<$Res> {
  __$$_AuthenticateResponseModelCopyWithImpl(
      _$_AuthenticateResponseModel _value,
      $Res Function(_$_AuthenticateResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_AuthenticateResponseModel(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticateResponseModel implements _AuthenticateResponseModel {
  _$_AuthenticateResponseModel({required this.token});

  factory _$_AuthenticateResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticateResponseModelFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticateResponseModel(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticateResponseModel &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticateResponseModelCopyWith<_$_AuthenticateResponseModel>
      get copyWith => __$$_AuthenticateResponseModelCopyWithImpl<
          _$_AuthenticateResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticateResponseModelToJson(
      this,
    );
  }
}

abstract class _AuthenticateResponseModel implements AuthenticateResponseModel {
  factory _AuthenticateResponseModel({required final String token}) =
      _$_AuthenticateResponseModel;

  factory _AuthenticateResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AuthenticateResponseModel.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticateResponseModelCopyWith<_$_AuthenticateResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
