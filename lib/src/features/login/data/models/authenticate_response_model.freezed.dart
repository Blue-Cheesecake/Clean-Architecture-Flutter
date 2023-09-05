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

AuthenticatResponseModel _$AuthenticatResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AuthenticatResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatResponseModel {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticatResponseModelCopyWith<AuthenticatResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatResponseModelCopyWith<$Res> {
  factory $AuthenticatResponseModelCopyWith(AuthenticatResponseModel value,
          $Res Function(AuthenticatResponseModel) then) =
      _$AuthenticatResponseModelCopyWithImpl<$Res, AuthenticatResponseModel>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$AuthenticatResponseModelCopyWithImpl<$Res,
        $Val extends AuthenticatResponseModel>
    implements $AuthenticatResponseModelCopyWith<$Res> {
  _$AuthenticatResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_AuthenticatResponseModelCopyWith<$Res>
    implements $AuthenticatResponseModelCopyWith<$Res> {
  factory _$$_AuthenticatResponseModelCopyWith(
          _$_AuthenticatResponseModel value,
          $Res Function(_$_AuthenticatResponseModel) then) =
      __$$_AuthenticatResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$_AuthenticatResponseModelCopyWithImpl<$Res>
    extends _$AuthenticatResponseModelCopyWithImpl<$Res,
        _$_AuthenticatResponseModel>
    implements _$$_AuthenticatResponseModelCopyWith<$Res> {
  __$$_AuthenticatResponseModelCopyWithImpl(_$_AuthenticatResponseModel _value,
      $Res Function(_$_AuthenticatResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_AuthenticatResponseModel(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticatResponseModel implements _AuthenticatResponseModel {
  _$_AuthenticatResponseModel({required this.token});

  factory _$_AuthenticatResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticatResponseModelFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticatResponseModel(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatResponseModel &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatResponseModelCopyWith<_$_AuthenticatResponseModel>
      get copyWith => __$$_AuthenticatResponseModelCopyWithImpl<
          _$_AuthenticatResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticatResponseModelToJson(
      this,
    );
  }
}

abstract class _AuthenticatResponseModel implements AuthenticatResponseModel {
  factory _AuthenticatResponseModel({required final String token}) =
      _$_AuthenticatResponseModel;

  factory _AuthenticatResponseModel.fromJson(Map<String, dynamic> json) =
      _$_AuthenticatResponseModel.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatResponseModelCopyWith<_$_AuthenticatResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
