// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmentOrderImpl _$$AttachmentOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmentOrderImpl(
      fileName: json['file_name'] as String,
      path: json['path'] as String,
      type: json['type'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$AttachmentOrderImplToJson(
        _$AttachmentOrderImpl instance) =>
    <String, dynamic>{
      'file_name': instance.fileName,
      'path': instance.path,
      'type': instance.type,
      'url': instance.url,
    };
