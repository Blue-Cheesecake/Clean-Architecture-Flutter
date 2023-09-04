import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'utils/utils.dart';

class CACFLog {
  const CACFLog._();

  static void print({String? message}) {
    log('[⛈️ ${CACFLogConstants.title}]: $message');
  }

  static void printDioExceptionMessage(DioException e) {
    CACFLog.print(message: 'Dio Error -> ${e.error}');
    CACFLog.print(message: 'Dio Message -> ${e.message}');
    CACFLog.print(message: 'Dio Header -> ${beautifyHeader(e.requestOptions.headers)}');
  }

  static void printDebug({String? message}) {
    debugPrint('[🦊 ${CACFLogConstants.title}]: $message');
  }

  static void printException({Exception? e, String? message}) {
    log('[🦊 ${CACFLogConstants.title} EXCEPTION]: $message');
    log('[🦊 ${CACFLogConstants.title} EXCEPTION]: $e');
  }
}
