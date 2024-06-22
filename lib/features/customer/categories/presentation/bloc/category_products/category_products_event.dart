import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_products_event.freezed.dart';
@Freezed()
class CategoryProductsEvent with _$CategoryProductsEvent {
  const factory CategoryProductsEvent.started() = _Started;
  const factory CategoryProductsEvent.getCategoryProducts(int categoryid) = GetCategoryProductsEvent;
}