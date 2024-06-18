import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_categories_event.freezed.dart';
@Freezed()
class HomeCategoriesEvent with _$HomeCategoriesEvent {
  const factory HomeCategoriesEvent.started() = _Started;
  const factory HomeCategoriesEvent.getAllCategories() = GetAllCategoriesEvent;
}