// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceOrderImpl _$$ServiceOrderImplFromJson(Map<String, dynamic> json) =>
    _$ServiceOrderImpl(
      id: (json['id'] as num).toInt(),
      uuid: json['uuid'] as String,
      title: json['title'] as String?,
      type: json['type'] as String?,
      regional: json['regional'] as String?,
      city: json['city'] as String?,
      obs: json['obs'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      expectedStartDate: json['expected_start_date'] == null
          ? null
          : DateTime.parse(json['expected_start_date'] as String),
      expectedFinishDate: json['expected_finish_date'] == null
          ? null
          : DateTime.parse(json['expected_finish_date'] as String),
      actualStartDate: json['execution_start_date'] as String?,
      actualFinishDate: json['execution_finish_date'] == null
          ? null
          : DateTime.parse(json['execution_finish_date'] as String),
      location: Point.fromJson(json['location'] as Map<String, dynamic>),
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => AttachmentOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      stage: ServiceStage.fromJson(json['stage'] as Map<String, dynamic>),
      workspaceStageId: (json['workspace_stage_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ServiceOrderImplToJson(_$ServiceOrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'title': instance.title,
      'type': instance.type,
      'regional': instance.regional,
      'city': instance.city,
      'obs': instance.obs,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'expected_start_date': instance.expectedStartDate?.toIso8601String(),
      'expected_finish_date': instance.expectedFinishDate?.toIso8601String(),
      'execution_start_date': instance.actualStartDate,
      'execution_finish_date': instance.actualFinishDate?.toIso8601String(),
      'location': instance.location,
      'attachments': instance.attachments,
      'stage': instance.stage,
      'workspace_stage_id': instance.workspaceStageId,
    };
