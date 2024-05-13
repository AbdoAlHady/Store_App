import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_response_model.g.dart';
@JsonSerializable()
class CategoriesResponse {
   final CategoriesDateModel? date;

  CategoriesResponse(this.date);
  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}

@JsonSerializable()
class CategoriesDateModel {
  final List<CategoriesModel>? categories;

  CategoriesDateModel(this.categories);
  factory CategoriesDateModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDateModelFromJson(json);
}

@JsonSerializable()
class CategoriesModel {
  final String? id;
  final String? name;
  final String? image;

  CategoriesModel(this.id, this.name, this.image);

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}
