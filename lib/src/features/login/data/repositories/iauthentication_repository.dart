import '../../domain/domain.dart';
import '../data.dart';

abstract interface class IAuthenticationRepository {
  Future<IAuthenticateResponseEntity> login({required final AuthenticateRequestModel request});
}
