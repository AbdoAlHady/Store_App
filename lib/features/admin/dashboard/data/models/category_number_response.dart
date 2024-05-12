import 'package:json_annotation/json_annotation.dart';
part 'category_number_response.g.dart';

@JsonSerializable()
class CategoriesNumberResonse {
  final CategoriesDataModel? data;
  CategoriesNumberResonse(this.data);

  String get categoriesNumber {
    if (data?.categories == null) {
      return '0';
    }
    return data!.categories!.length.toString();
  }

  factory CategoriesNumberResonse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesNumberResonseFromJson(json);
}

@JsonSerializable()
class CategoriesDataModel {
    CategoriesDataModel(this.categories);

  final List<CategoriesNumberModel>? categories;

  factory CategoriesDataModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDataModelFromJson(json);
}
@JsonSerializable()
class CategoriesNumberModel {
  final String? name;

  CategoriesNumberModel(this.name);

  factory CategoriesNumberModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesNumberModelFromJson(json);
}
