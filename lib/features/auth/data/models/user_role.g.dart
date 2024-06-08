// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserRoleFromJson(Map<String, dynamic> json) => UserModel(
      json['role'] as String?,
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      json['email'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$UserRoleToJson(UserModel instance) => <String, dynamic>{
      'role': instance.role,
      'id': instance.id,
      'name': instance.userName,
      'email': instance.userEmail,
      'image': instance.userImage,
    };
