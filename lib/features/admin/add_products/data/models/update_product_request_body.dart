import 'package:json_annotation/json_annotation.dart';
part 'update_product_request_body.g.dart';
@JsonSerializable()
class UpdateProductRequestBody {
  final String id;
  final String? title;
  final String? description;
  final double? price;
  final List<String>? images;
  final double? categoryId;

  UpdateProductRequestBody({required this.id, required this.title, required this.description, required this.price, required this.images, required this.categoryId});

  Map<String,dynamic>toJson()=>_$UpdateProductRequestBodyToJson(this);
}
