import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic_response.freezed.dart';
part 'generic_response.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class GenericResponse<T> with _$GenericResponse<T> {
  factory GenericResponse({
    String? message,
    T? data,
  }) = _GenericResponse;

  factory GenericResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) =>
      _$GenericResponseFromJson(json, fromJsonT);
}

extension GenericResponseExtension on GenericResponse {
  bool get hasData => data != null;
}
