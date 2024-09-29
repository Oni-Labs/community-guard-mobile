// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_execution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceExecutionImpl _$$ServiceExecutionImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceExecutionImpl(
      uuid: json['uuid'] as String?,
      observation: json['observation'] as String?,
      justification: json['justification'] as String?,
      hasOccurrence: json['has_occurrence'] as bool? ?? false,
      startAt: json['started_at'] as String?,
      finishAt: json['finished_at'] as String?,
    );

Map<String, dynamic> _$$ServiceExecutionImplToJson(
        _$ServiceExecutionImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'observation': instance.observation,
      'justification': instance.justification,
      'has_occurrence': instance.hasOccurrence,
      'started_at': instance.startAt,
      'finished_at': instance.finishAt,
    };
