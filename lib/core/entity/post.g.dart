// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      nameUser: json['nameUser'] as String,
      urlPhotoUser: json['urlPhotoUser'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      urlPhotoPost: json['urlPhotoPost'] as String,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'nameUser': instance.nameUser,
      'urlPhotoUser': instance.urlPhotoUser,
      'title': instance.title,
      'description': instance.description,
      'urlPhotoPost': instance.urlPhotoPost,
    };
