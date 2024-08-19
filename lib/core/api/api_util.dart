import 'dart:io';

import 'package:community_surveillance/core/api/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import '../../helpers.dart';
import 'interceptor/token_interceptor.dart';

class ApiUtil {
  static Dio getDioClient() {
    final dio = Dio(
      BaseOptions(
        headers: {
          HttpHeaders.acceptHeader: 'application/json',
        },
      ),
    );

    dio.interceptors.add(TokenInterceptor());

    if (kDebugMode) {
      dio.interceptors.add(
        TalkerDioLogger(
          talker: talker,
          settings: const TalkerDioLoggerSettings(
            printRequestHeaders: true,
            printResponseHeaders: true,
            printResponseMessage: true,
          ),
        ),
      );
    }

    return dio;
  }

  static RestClient getRestClient() {
    return RestClient(getDioClient());
  }
}
