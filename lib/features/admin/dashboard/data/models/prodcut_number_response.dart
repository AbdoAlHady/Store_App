import 'package:freezed_annotation/freezed_annotation.dart';

part 'prodcut_number_response.g.dart';

@JsonSerializable()
class ProductNumberResponse {
  ProductNumberResponse(this.data);

  final ProductsDataModel data;

  factory ProductNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductNumberResponseFromJson(json);

  String get productsNumber {
    if(data.prodcuts == null) return '0';
    return data.prodcuts!.length.toString();
  }
}

@JsonSerializable()
class ProductsDataModel {
  final List<ProdcutsNumberModel>? prodcuts;

  ProductsDataModel({required this.prodcuts});
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
