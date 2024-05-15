
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/update_category_request_body.dart';
part 'update_category_event.freezed.dart';
@Freezed()
class UpdateCategoryEvent with _$UpdateCategoryEvent {
  const factory UpdateCategoryEvent.started() = _Started;
  const factory UpdateCategoryEvent.updateCategory({required UpdateCategoryRequestBody body}) = UpdateCategory;
}