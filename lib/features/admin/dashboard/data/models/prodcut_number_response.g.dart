// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prodcut_number_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductNumberResponse _$ProductNumberResponseFromJson(
        Map<String, dynamic> json) =>
    ProductNumberResponse(
      ProductsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductNumberResponseToJson(
        ProductNumberResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ProductsDataModel _$ProductsDataModelFromJson(Map<String, dynamic> json) =>
    ProductsDataModel(
      prodcuts: (json['prodcuts'] as List<dynamic>?)
          ?.map((e) => ProdcutsNumberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsDataModelToJson(ProductsDataModel instance) =>
    <String, dynamic>{
      'prodcuts': instance.prodcuts,
    };

ProdcutsNumberModel _$ProdcutsNumberModelFromJson(Map<String, dynamic> json) =>
    ProdcutsNumberModel(
      json['title'] as String?,
    );

Map<String, dynamic> _$ProdcutsNumberModelToJson(
        ProdcutsNumberModel instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
