import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';

part 'authenticate_response_model.freezed.dart';
part 'authenticate_response_model.g.dart';

@freezed
class AuthenticateResponseModel with _$AuthenticateResponseModel implements IAuthenticateResponseEntity {
  factory AuthenticateResponseModel({
    required final String token,
  }) = _AuthenticateResponseModel;

  factory AuthenticateResponseModel.fromJson(Map<String, dynamic> json) => _$AuthenticateResponseModelFromJson(json);
}
