import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/add_categories/data/models/create_category_request_body.dart';
part 'create_category_event.freezed.dart';

@Freezed()
class CreateCategoryEvent with _$CreateCategoryEvent {
  const factory CreateCategoryEvent.started() = _Started;
  const factory CreateCategoryEvent.createCategory(
      {required CreateCategoryRequestBody body}) = _CreateCategory;
}
