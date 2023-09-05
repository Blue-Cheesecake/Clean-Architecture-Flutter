import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'authenticate_response_model.freezed.dart';
part 'authenticate_response_model.g.dart';

@freezed
class AuthenticatResponseModel with _$AuthenticatResponseModel implements IAuthenticateResponseEntity {
  factory AuthenticatResponseModel({
    required final String token,
  }) = _AuthenticatResponseModel;

  factory AuthenticatResponseModel.fromJson(Map<String, dynamic> json) => _$AuthenticatResponseModelFromJson(json);
}
