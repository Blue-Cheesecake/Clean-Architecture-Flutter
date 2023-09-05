import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticate_request_model.freezed.dart';
part 'authenticate_request_model.g.dart';

@freezed
class AuthenticateRequestModel with _$AuthenticateRequestModel {
  factory AuthenticateRequestModel({
    required final String username,
    required final String password,
  }) = _AuthenticateRequestModel;

  factory AuthenticateRequestModel.fromJson(Map<String, dynamic> json) => _$AuthenticateRequestModelFromJson(json);
}
