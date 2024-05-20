import 'package:json_annotation/json_annotation.dart';
part 'get_all_products_response.g.dart';

@JsonSerializable()
class GetAllProductsResponse {
  final GetAllProductsData data;

  GetAllProductsResponse(this.data);
  List<GetAllProductsModel> get products {
    if (data.products.isEmpty) {
      return [];
    }
    return data.products;
  } 

  factory GetAllProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsResponseFromJson(json);
}

@JsonSerializable()
class GetAllProductsData {
  final List<GetAllProductsModel> products;

  GetAllProductsData(this.products);

  factory GetAllProductsData.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsDataFromJson(json);
}

@JsonSerializable()
class GetAllProductsModel {
  final String? id;
  final String? title;
  final String? description;
  final String? price;
  final List<String>? image;
  final GetAllProductsCatgeoryModel? category;

  GetAllProductsModel(this.id, this.title, this.description, this.price,
      this.image, this.category);
  factory GetAllProductsModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsModelFromJson(json);
}

@JsonSerializable()
class GetAllProductsCatgeoryModel {
  final String? id;
  final String? name;

  GetAllProductsCatgeoryModel(this.id, this.name);

  factory GetAllProductsCatgeoryModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsCatgeoryModelFromJson(json);
}
