import 'package:freezed_annotation/freezed_annotation.dart';

part 'prodcut_number_response.g.dart';

@JsonSerializable()
class ProductNumberResponse {
  ProductNumberResponse(this.data);

  final ProductsDataModel data;

  factory ProductNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductNumberResponseFromJson(json);

  String get productsNumber {
    if(data.products!.isEmpty) return '0';
    return data.products!.length.toString();
  }
}

@JsonSerializable()
class ProductsDataModel {
  final List<ProdcutsNumberModel>? products;

  ProductsDataModel({required this.products});
  factory ProductsDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsDataModelFromJson(json);
}

@JsonSerializable()
class ProdcutsNumberModel {
  final String? title;

  ProdcutsNumberModel(this.title);
  factory ProdcutsNumberModel.fromJson(Map<String, dynamic> json) =>
      _$ProdcutsNumberModelFromJson(json);
}
