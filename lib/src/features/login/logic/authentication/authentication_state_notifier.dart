import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/core.dart';
import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../../domain/domain.dart';
import '../logic.dart';

class AuthenticationStateNotifier extends CACFStateNotifier<AuthenticationState> {
  AuthenticationStateNotifier({
    required final Ref ref,
    required final LoginUseCase loginUseCase,
  })  : _ref = ref,
        _loginUseCase = loginUseCase,
        super(AuthenticationState.initial());

  final Ref _ref;
  final LoginUseCase _loginUseCase;

  Future<void> login() async {
    safeState = AuthenticationState.loading();
    final String username = _ref.read(formInputStateProvider.select((value) => value.username))!;
    final String password = _ref.read(formInputStateProvider.select((value) => value.password))!;

    final response = await _loginUseCase.execute(AuthenticateRequestModel(username: username, password: password));

    response.when(
      success: (data) {
        CACFUser.instance.writeToken(data.token);
        safeState = AuthenticationState.data(data: data);
      },
      error: (error) {
        safeState = AuthenticationState.error();
      },
    );
  }
}
