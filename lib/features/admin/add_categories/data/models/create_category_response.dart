
import 'package:json_annotation/json_annotation.dart';
part 'create_category_response.g.dart';

@JsonSerializable()
class CreateCategoryResponse {
  final CreateCategoryData data;

  CreateCategoryResponse(this.data);
  factory CreateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseFromJson(json);
}

@JsonSerializable()
class CreateCategoryData {
  @JsonKey(name: 'addCategory')
  final CreateCategoryModle createCategoryModle;

  CreateCategoryData(this.createCategoryModle);
  factory CreateCategoryData.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryDataFromJson(json);
}

@JsonSerializable()
class CreateCategoryModle {
  final String? name;
  final String? image;
  final String? id;

  CreateCategoryModle(
      {required this.name, required this.image, required this.id});

  factory CreateCategoryModle.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryModleFromJson(json);
}
