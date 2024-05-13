
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_all_admin_categories_event.freezed.dart';
@Freezed()
class GetAllAdminCategoriesEvent with _$GetAllAdminCategoriesEvent {
  const factory GetAllAdminCategoriesEvent.started() = _Started;
  const factory GetAllAdminCategoriesEvent.getAllAdminCategories() = GetAllAdminCategories;
}