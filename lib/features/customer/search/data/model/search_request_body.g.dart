// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRequestBody _$SearchRequestBodyFromJson(Map<String, dynamic> json) =>
    SearchRequestBody(
      productMin: (json['productMin'] as num?)?.toInt(),
      productMax: (json['productMax'] as num?)?.toInt(),
      productName: json['productName'] as String?,
    );

Map<String, dynamic> _$SearchRequestBodyToJson(SearchRequestBody instance) =>
    <String, dynamic>{
      'productMin': instance.productMin,
      'productMax': instance.productMax,
      'productName': instance.productName,
    };
