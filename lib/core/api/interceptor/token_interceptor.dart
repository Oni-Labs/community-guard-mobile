import 'dart:async';

import 'package:dio/dio.dart';
// import 'package:hive/hive.dart';

class TokenInterceptor extends Interceptor {
  // final _settingsBox = Hive.box('settings');

  @override
  FutureOr<dynamic> onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    // final token = _settingsBox.get('user_token');

    // if (token != null) {
    //   options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    // }

    return handler.next(options);
  }
}
