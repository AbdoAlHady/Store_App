// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllProductsResponse _$GetAllProductsResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllProductsResponse(
      GetAllProductsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllProductsResponseToJson(
        GetAllProductsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

GetAllProductsData _$GetAllProductsDataFromJson(Map<String, dynamic> json) =>
    GetAllProductsData(
      (json['products'] as List<dynamic>)
          .map((e) => GetAllProductsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllProductsDataToJson(GetAllProductsData instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

GetAllProductsModel _$GetAllProductsModelFromJson(Map<String, dynamic> json) =>
    GetAllProductsModel(
      json['id'] as String?,
      json['title'] as String?,
      json['description'] as String?,
      json['price'] as String?,
      (json['image'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['category'] == null
          ? null
          : GetAllProductsCatgeoryModel.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllProductsModelToJson(
        GetAllProductsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
      'category': instance.category,
    };

GetAllProductsCatgeoryModel _$GetAllProductsCatgeoryModelFromJson(
        Map<String, dynamic> json) =>
    GetAllProductsCatgeoryModel(
      json['id'] as String?,
      json['name'] as String?,
    );

Map<String, dynamic> _$GetAllProductsCatgeoryModelToJson(
        GetAllProductsCatgeoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
