import 'package:json_annotation/json_annotation.dart';
import 'package:store_app/core/utils/app_string.dart';
part 'banner_response.g.dart';

@JsonSerializable()
class BannersResponse {
  final BannerData data;

  BannersResponse(this.data);
  factory BannersResponse.fromJson(Map<String, dynamic> json) =>
      _$BannersResponseFromJson(json);

  // get banner list
  List<String> get banners {
    final list = data.banners
        .where((e) => e.title!.contains(AppString.searchBannerKeyWord))
        .toList();
    if (list.isEmpty) {
      return [];
    } else {
      return list.first.images!;
    }
  }
}

@JsonSerializable()
class BannerData {
  @JsonKey(name: 'products')
  final List<BannerModel> banners;

  BannerData(this.banners);
  factory BannerData.fromJson(Map<String, dynamic> json) =>
      _$BannerDataFromJson(json);
}

@JsonSerializable()
class BannerModel {
  final List<String>? images;
  final String? title;

  BannerModel(this.images, this.title);
  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}
