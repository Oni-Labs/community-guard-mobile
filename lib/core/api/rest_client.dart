// ignore_for_file: invalid_annotation_target
import 'dart:io';

import 'package:community_guard_mobile/core/api/response/generic_response.dart';
import 'package:community_guard_mobile/core/entity/user.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../constants.dart';

part 'rest_client.g.dart';

const bool isDev = true;

@RestApi(baseUrl: isDev ? kBaseDevUrl : kBaseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  // Login
  @POST('/login')
  @Headers({'Accept': 'application/json'})
  @FormUrlEncoded()
  Future<HttpResponse<GenericResponse<User>>> login({
    @Field() required String email,
    @Field() required String password,
  });

  // Register
  @POST('/register')
  @Headers({'Accept': 'application/json'})
  @FormUrlEncoded()
  Future<HttpResponse<GenericResponse<User>>> register({
    @Field() required String name,
    @Field() required String email,
    @Field() required String password,
    @Field('password_confirmation') required String passwordConfirmation,
  });

  @POST('/publication')
  @Header('Accept: application/json')
  @MultiPart()
  Future<HttpResponse<GenericResponse>> createPost({
    @Part() required String title,
    @Part() required String description,
    @Part() required List<File> file,
    @Part() required double latitude,
    @Part() required double longitude,
  });
}
