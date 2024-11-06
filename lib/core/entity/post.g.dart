// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      username: json['username'] as String,
      urlPhotoUser: json['urlPhotoUser'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      urlPhotosPost: (json['urlPhotosPost'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isCompleted: json['isCompleted'] as bool? ?? false,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'urlPhotoUser': instance.urlPhotoUser,
      'title': instance.title,
      'description': instance.description,
      'urlPhotosPost': instance.urlPhotosPost,
      'isCompleted': instance.isCompleted,
      'address': instance.address,
    };
