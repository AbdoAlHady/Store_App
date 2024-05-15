import 'package:json_annotation/json_annotation.dart';
part 'create_category_request_body.g.dart';

@JsonSerializable()
class CreateCategoryRequestBody {
  final String? name;
  final String? image;

  CreateCategoryRequestBody({required this.name, required this.image});

  Map<String, dynamic> toJson() => _$CreateCategoryRequestBodyToJson(this);

  
}
