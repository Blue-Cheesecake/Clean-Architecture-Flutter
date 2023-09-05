import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../core/core.dart';
import 'base_result.dart';
import 'exceptions/exceptions.dart';
import 'utils.dart';

abstract class BaseUseCase<P, R> {
  @protected
  Future<R> call(P params);

  Future<Result<R, AnyException>> execute(P params) async {
    final networkManager = CACFNetworkManager();

    try {
      CACFLog.printDebug(message: 'Calling Usecase');

      final response = await call(params);

      CACFLog.printDebug(message: 'Successfully Called UseCase');

      return Success(response);
    } catch (e) {
      CACFLog.printDebug(message: 'Error on Calling UseCase');
      CACFLog.printDebug(message: '$e');

      if (e is DioException) {
        final Response<dynamic>? response = e.response;
        // NOTE: you may change message of failure
        return Failure(ClientException(messages: CACFCommonMessages.unknownError));
      }

      if (await networkManager.isConnected) {
        return Failure(ServerException(messages: CACFCommonMessages.unknownError));
      }

      CACFLog.printDebug(message: 'Internet is not connected');
      return Failure(InternetConnectionException());
    }
  }
}
