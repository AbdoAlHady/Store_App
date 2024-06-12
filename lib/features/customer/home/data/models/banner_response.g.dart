// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannersResponse _$BannersResponseFromJson(Map<String, dynamic> json) =>
    BannersResponse(
      BannerData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BannersResponseToJson(BannersResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

BannerData _$BannerDataFromJson(Map<String, dynamic> json) => BannerData(
      (json['products'] as List<dynamic>)
          .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BannerDataToJson(BannerData instance) =>
    <String, dynamic>{
      'products': instance.banners,
    };

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['title'] as String?,
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'images': instance.images,
      'title': instance.title,
    };
