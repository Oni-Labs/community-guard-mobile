// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationResponseImpl<T> _$$PaginationResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationResponseImpl<T>(
      to: (json['to'] as num?)?.toInt() ?? 0,
      from: (json['from'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
      data:
          (json['data'] as List<dynamic>?)?.map(fromJsonT).toList() ?? const [],
      currentPage: (json['current_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      firstPageUrl: json['first_page_url'] as String,
      lastPageUrl: json['last_page_url'] as String,
      nextPageUrl: json['next_page_url'] as String?,
      prevPageUrl: json['prev_page_url'] as String?,
    );

Map<String, dynamic> _$$PaginationResponseImplToJson<T>(
  _$PaginationResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'to': instance.to,
      'from': instance.from,
      'total': instance.total,
      'data': instance.data.map(toJsonT).toList(),
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'first_page_url': instance.firstPageUrl,
      'last_page_url': instance.lastPageUrl,
      'next_page_url': instance.nextPageUrl,
      'prev_page_url': instance.prevPageUrl,
    };
