import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IAuthenticationDataSource {
  Future<IAuthenticateResponseEntity> login({required final AuthenticateRequestModel request});
}
