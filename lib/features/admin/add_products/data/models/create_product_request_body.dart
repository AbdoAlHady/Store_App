
import 'package:json_annotation/json_annotation.dart';
part 'create_product_request_body.g.dart';
@JsonSerializable()
class CreateProductRequestBody {
  final String title;
  final num price;
  final String description;
  final String categoryId;
  final List<String> images;

  CreateProductRequestBody({required this.title, required this.price, required this.description, required this.categoryId, required this.images});

  Map<String, dynamic> toJson() => _$CreateProductRequestBodyToJson(this);
}
