import 'package:json_annotation/json_annotation.dart';
part 'update_category_request_body.g.dart';

@JsonSerializable()
class UpdateCategoryRequestBody {
  final String id;
  final String? name;
  final String? image;

  UpdateCategoryRequestBody({required this.id, this.name, this.image});

  Map<String, dynamic> toJson() => _$UpdateCategoryRequestBodyToJson(this);
}
