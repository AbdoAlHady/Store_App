// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProductRequestBody _$UpdateProductRequestBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateProductRequestBody(
      id: json['id'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      categoryId: (json['categoryId'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UpdateProductRequestBodyToJson(
        UpdateProductRequestBody instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'images': instance.images,
      'categoryId': instance.categoryId,
    };
