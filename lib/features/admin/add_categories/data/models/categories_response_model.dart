import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_response_model.g.dart';

@JsonSerializable()
class CategoriesResponse {
  final CategoriesDateModel data;

  CategoriesResponse(this.data);
  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);

  List<CategoriesModel> get categoryList {
    if (data.categories.isEmpty) return [];
    return data.categories;
  }

  List<String> get categoryDropdownList {
    final list = categoryList.map((e) => e.name ?? '').toList();
    return list;
  }
}

@JsonSerializable()
class CategoriesDateModel {
  final List<CategoriesModel> categories;

  CategoriesDateModel(this.categories);
  factory CategoriesDateModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDateModelFromJson(json);
}

@JsonSerializable()
//
class CategoriesModel {
  final String? id;
  final String? name;
  final String? image;

  CategoriesModel(this.id, this.name, this.image);

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}
