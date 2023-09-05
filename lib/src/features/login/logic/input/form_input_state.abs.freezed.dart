// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_input_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormInputState {
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool get isButtonEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormInputStateCopyWith<FormInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormInputStateCopyWith<$Res> {
  factory $FormInputStateCopyWith(
          FormInputState value, $Res Function(FormInputState) then) =
      _$FormInputStateCopyWithImpl<$Res, FormInputState>;
  @useResult
  $Res call({String? username, String? password, bool isButtonEnabled});
}

/// @nodoc
class _$FormInputStateCopyWithImpl<$Res, $Val extends FormInputState>
    implements $FormInputStateCopyWith<$Res> {
  _$FormInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? isButtonEnabled = null,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isButtonEnabled: null == isButtonEnabled
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormInputStateCopyWith<$Res>
    implements $FormInputStateCopyWith<$Res> {
  factory _$$_FormInputStateCopyWith(
          _$_FormInputState value, $Res Function(_$_FormInputState) then) =
      __$$_FormInputStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? password, bool isButtonEnabled});
}

/// @nodoc
class __$$_FormInputStateCopyWithImpl<$Res>
    extends _$FormInputStateCopyWithImpl<$Res, _$_FormInputState>
    implements _$$_FormInputStateCopyWith<$Res> {
  __$$_FormInputStateCopyWithImpl(
      _$_FormInputState _value, $Res Function(_$_FormInputState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? isButtonEnabled = null,
  }) {
    return _then(_$_FormInputState(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      isButtonEnabled: null == isButtonEnabled
          ? _value.isButtonEnabled
          : isButtonEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FormInputState implements _FormInputState {
  _$_FormInputState(
      {this.username, this.password, this.isButtonEnabled = false});

  @override
  final String? username;
  @override
  final String? password;
  @override
  @JsonKey()
  final bool isButtonEnabled;

  @override
  String toString() {
    return 'FormInputState(username: $username, password: $password, isButtonEnabled: $isButtonEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormInputState &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isButtonEnabled, isButtonEnabled) ||
                other.isButtonEnabled == isButtonEnabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, password, isButtonEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormInputStateCopyWith<_$_FormInputState> get copyWith =>
      __$$_FormInputStateCopyWithImpl<_$_FormInputState>(this, _$identity);
}

abstract class _FormInputState implements FormInputState {
  factory _FormInputState(
      {final String? username,
      final String? password,
      final bool isButtonEnabled}) = _$_FormInputState;

  @override
  String? get username;
  @override
  String? get password;
  @override
  bool get isButtonEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_FormInputStateCopyWith<_$_FormInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
