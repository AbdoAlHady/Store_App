// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_number_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesNumberResonse _$CategoriesNumberResonseFromJson(
        Map<String, dynamic> json) =>
    CategoriesNumberResonse(
      json['data'] == null
          ? null
          : CategoriesDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesNumberResonseToJson(
        CategoriesNumberResonse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CategoriesDataModel _$CategoriesDataModelFromJson(Map<String, dynamic> json) =>
    CategoriesDataModel(
      (json['categories'] as List<dynamic>?)
          ?.map(
              (e) => CategoriesNumberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesDataModelToJson(
        CategoriesDataModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

CategoriesNumberModel _$CategoriesNumberModelFromJson(
        Map<String, dynamic> json) =>
    CategoriesNumberModel(
      json['name'] as String?,
    );

Map<String, dynamic> _$CategoriesNumberModelToJson(
        CategoriesNumberModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
