import 'package:json_annotation/json_annotation.dart';
part 'product_details_response.g.dart';
@JsonSerializable()
class ProductDetailsResponse {
  final ProductDetailsData data;

  ProductDetailsResponse(this.data);
  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsResponseFromJson(json);
  
}

@JsonSerializable()
class ProductDetailsData {
  final ProductDetailsModel products;

  ProductDetailsData(this.products);
  factory ProductDetailsData.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsDataFromJson(json);
}

@JsonSerializable()
class ProductDetailsModel {
  final String? title;
  final num? price;
  final String? description;
  final List<String>? images;

  ProductDetailsModel(this.title, this.price, this.description, this.images);
  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}
