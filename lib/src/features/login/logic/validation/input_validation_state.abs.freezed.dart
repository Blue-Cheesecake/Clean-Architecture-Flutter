// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_validation_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InputValidationState {
  String? get usenameErrorText => throw _privateConstructorUsedError;
  String? get passwordErrorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputValidationStateCopyWith<InputValidationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputValidationStateCopyWith<$Res> {
  factory $InputValidationStateCopyWith(InputValidationState value,
          $Res Function(InputValidationState) then) =
      _$InputValidationStateCopyWithImpl<$Res, InputValidationState>;
  @useResult
  $Res call({String? usenameErrorText, String? passwordErrorText});
}

/// @nodoc
class _$InputValidationStateCopyWithImpl<$Res,
        $Val extends InputValidationState>
    implements $InputValidationStateCopyWith<$Res> {
  _$InputValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usenameErrorText = freezed,
    Object? passwordErrorText = freezed,
  }) {
    return _then(_value.copyWith(
      usenameErrorText: freezed == usenameErrorText
          ? _value.usenameErrorText
          : usenameErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordErrorText: freezed == passwordErrorText
          ? _value.passwordErrorText
          : passwordErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InputValidationStateCopyWith<$Res>
    implements $InputValidationStateCopyWith<$Res> {
  factory _$$_InputValidationStateCopyWith(_$_InputValidationState value,
          $Res Function(_$_InputValidationState) then) =
      __$$_InputValidationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? usenameErrorText, String? passwordErrorText});
}

/// @nodoc
class __$$_InputValidationStateCopyWithImpl<$Res>
    extends _$InputValidationStateCopyWithImpl<$Res, _$_InputValidationState>
    implements _$$_InputValidationStateCopyWith<$Res> {
  __$$_InputValidationStateCopyWithImpl(_$_InputValidationState _value,
      $Res Function(_$_InputValidationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usenameErrorText = freezed,
    Object? passwordErrorText = freezed,
  }) {
    return _then(_$_InputValidationState(
      usenameErrorText: freezed == usenameErrorText
          ? _value.usenameErrorText
          : usenameErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordErrorText: freezed == passwordErrorText
          ? _value.passwordErrorText
          : passwordErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InputValidationState implements _InputValidationState {
  _$_InputValidationState({this.usenameErrorText, this.passwordErrorText});

  @override
  final String? usenameErrorText;
  @override
  final String? passwordErrorText;

  @override
  String toString() {
    return 'InputValidationState(usenameErrorText: $usenameErrorText, passwordErrorText: $passwordErrorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InputValidationState &&
            (identical(other.usenameErrorText, usenameErrorText) ||
                other.usenameErrorText == usenameErrorText) &&
            (identical(other.passwordErrorText, passwordErrorText) ||
                other.passwordErrorText == passwordErrorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, usenameErrorText, passwordErrorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InputValidationStateCopyWith<_$_InputValidationState> get copyWith =>
      __$$_InputValidationStateCopyWithImpl<_$_InputValidationState>(
          this, _$identity);
}

abstract class _InputValidationState implements InputValidationState {
  factory _InputValidationState(
      {final String? usenameErrorText,
      final String? passwordErrorText}) = _$_InputValidationState;

  @override
  String? get usenameErrorText;
  @override
  String? get passwordErrorText;
  @override
  @JsonKey(ignore: true)
  _$$_InputValidationStateCopyWith<_$_InputValidationState> get copyWith =>
      throw _privateConstructorUsedError;
}
