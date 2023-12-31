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
    final formInputState = _ref.read(formInputStateProvider);
    final String username = formInputState.username!;
    final String password = formInputState.password!;

    // TODO: delete delay.
    //
    await Future.delayed(const Duration(seconds: 2));
    //
    final response = await _loginUseCase.execute(AuthenticateRequestModel(username: username, password: password));

    response.when(
      success: (data) {
        CACFUser.instance.writeToken(data.token);
        safeState = AuthenticationState.data(data: data);
        CACFNavigation.instance.go(RoutePath.home);
      },
      error: (error) {
        safeState = AuthenticationState.error();
      },
    );
  }
}
