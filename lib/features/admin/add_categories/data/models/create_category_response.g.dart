// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCategoryResponse _$CreateCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    CreateCategoryResponse(
      CreateCategoryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCategoryResponseToJson(
        CreateCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CreateCategoryData _$CreateCategoryDataFromJson(Map<String, dynamic> json) =>
    CreateCategoryData(
      CreateCategoryModle.fromJson(json['addCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateCategoryDataToJson(CreateCategoryData instance) =>
    <String, dynamic>{
      'addCategory': instance.createCategoryModle,
    };

CreateCategoryModle _$CreateCategoryModleFromJson(Map<String, dynamic> json) =>
    CreateCategoryModle(
      name: json['name'] as String?,
      image: json['image'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CreateCategoryModleToJson(
        CreateCategoryModle instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
    };
