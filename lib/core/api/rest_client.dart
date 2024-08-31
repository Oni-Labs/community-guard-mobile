// ignore_for_file: invalid_annotation_target
import 'package:community_guard_mobile/core/entity/user.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import 'request/generic_response.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'http://localhost:3000/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // Login
  @POST('/auth/login')
  @Headers({'Accept': 'application/json'})
  @FormUrlEncoded()
  Future<HttpResponse<User>> login({
    @Field() required String email,
    @Field() required String password,
  });

  // Register
  @POST('/auth/register')
  @Headers({'Accept': 'application/json'})
  @FormUrlEncoded()
  Future<HttpResponse<GenericResponse<User>>> register({
    @Field() required String name,
    @Field() required String email,
    @Field() required String password,
    @Field('confirm_password') required String confirmPassword,
  });
}
