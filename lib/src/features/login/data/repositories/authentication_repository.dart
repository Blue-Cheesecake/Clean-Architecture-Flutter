import '../../domain/domain.dart';
import '../data.dart';

class AuthenticationRepository implements IAuthenticationRepository {
  AuthenticationRepository({required IAuthenticationDataSource dataSource}) : _dataSource = dataSource;

  final IAuthenticationDataSource _dataSource;

  @override
  Future<IAuthenticateResponseEntity> login({required AuthenticateRequestModel request}) {
    final response = _dataSource.login(request: request);
    return response;
  }
}
