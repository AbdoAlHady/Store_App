// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_number_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersNumberResponse _$UsersNumberResponseFromJson(Map<String, dynamic> json) =>
    UsersNumberResponse(
      json['data'] == null
          ? null
          : UsersDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersNumberResponseToJson(
        UsersNumberResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UsersDataModel _$UsersDataModelFromJson(Map<String, dynamic> json) =>
    UsersDataModel(
      (json['users'] as List<dynamic>?)
          ?.map((e) => UsersDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsersDataModelToJson(UsersDataModel instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

UsersNumberModel _$UsersNumberModelFromJson(Map<String, dynamic> json) =>
    UsersNumberModel(
      json['name'] as String?,
    );

Map<String, dynamic> _$UsersNumberModelToJson(UsersNumberModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
