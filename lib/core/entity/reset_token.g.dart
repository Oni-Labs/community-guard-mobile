// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetTokenImpl _$$ResetTokenImplFromJson(Map<String, dynamic> json) =>
    _$ResetTokenImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      profilePhoto: json['profile_photo'] as String?,
      token: json['token'] as String,
      isFirstAccess: json['isFirstAccess'] as bool? ?? false,
    );

Map<String, dynamic> _$$ResetTokenImplToJson(_$ResetTokenImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'profile_photo': instance.profilePhoto,
      'token': instance.token,
      'isFirstAccess': instance.isFirstAccess,
    };
