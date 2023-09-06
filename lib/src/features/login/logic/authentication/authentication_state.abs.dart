import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'authentication_state.abs.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  factory AuthenticationState.initial() = _AuthenticationStateInitial;
  factory AuthenticationState.loading() = _AuthenticationStateLoading;
  factory AuthenticationState.data({required IAuthenticateResponseEntity data}) = _AuthenticationStateData;
  factory AuthenticationState.error() = _AuthenticationStateError;

  bool get isLoading => this is _AuthenticationStateLoading;
}
