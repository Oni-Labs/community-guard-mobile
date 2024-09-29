// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceStageImpl _$$ServiceStageImplFromJson(Map<String, dynamic> json) =>
    _$ServiceStageImpl(
      code: json['code'] as String,
      name: json['name'] as String,
      color: json['color'] as String,
      sortOrder: (json['sort_order'] as num).toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ServiceStageImplToJson(_$ServiceStageImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'color': instance.color,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
