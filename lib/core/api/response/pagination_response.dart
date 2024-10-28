//ignore_for_file:invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_response.freezed.dart';

part 'pagination_response.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationResponse<T> with _$PaginationResponse<T> {
  const factory PaginationResponse({
    @JsonKey(defaultValue: 0) required int to,
    @JsonKey(defaultValue: 0) required int from,
    @JsonKey(defaultValue: 0) required int total,
    @Default([]) List<T> data,
    @JsonKey(name: 'current_page') required int? currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'first_page_url') required String firstPageUrl,
    @JsonKey(name: 'last_page_url') required String lastPageUrl,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
  }) = _PaginationResponse;

  factory PaginationResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PaginationResponseFromJson(json, fromJsonT);
}

extension PaginationResponseExt on PaginationResponse {
  bool get hasData => data.isNotEmpty;

  bool get hasNext => nextPageUrl != null;

  bool get hasPrevious => prevPageUrl != null;
}
