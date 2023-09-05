import '../../../../utils/utils.dart';
import '../../data/data.dart';
import '../domain.dart';

class LoginUseCase extends BaseUseCase<AuthenticateRequestModel, IAuthenticateResponseEntity> {
  LoginUseCase({required IAuthenticationRepository repository}) : _repository = repository;

  final IAuthenticationRepository _repository;

  @override
  Future<IAuthenticateResponseEntity> call(AuthenticateRequestModel params) {
    final response = _repository.login(request: params);
    return response;
  }
}
