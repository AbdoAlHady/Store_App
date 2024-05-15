
import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_category_event.freezed.dart';
@Freezed()
class DeleteCategoryEvent with _$DeleteCategoryEvent {
  const factory DeleteCategoryEvent.started() = _Started;
  const factory DeleteCategoryEvent.deleteCategory({required String categoryId}) = _DeleteCategory;
}