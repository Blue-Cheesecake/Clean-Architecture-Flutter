import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/domain.dart';
import '../../utils/utils.dart';
import '../data.dart';

part 'authentication_retrofit_datasource.g.dart';

@RestApi()
abstract class AuthenticationRetrofit {
  @factoryMethod
  factory AuthenticationRetrofit(Dio dio) => _AuthenticationRetrofit(dio);

  @POST(AuthenticationBaseURLAPI.login)
  Future<AuthenticateResponseModel> login({@Body() required AuthenticateRequestModel request});
}

class AuthenticationRetrofitDataSource implements IAuthenticationDataSource {
  AuthenticationRetrofitDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<IAuthenticateResponseEntity> login({required AuthenticateRequestModel request}) {
    final retrofit = AuthenticationRetrofit(_dio);
    final response = retrofit.login(request: request);
    return response;
  }
}
