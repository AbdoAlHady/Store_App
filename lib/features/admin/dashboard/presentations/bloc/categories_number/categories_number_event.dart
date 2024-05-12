
import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_number_event.freezed.dart';
@Freezed()
class CategoriesNumberEvent with _$CategoriesNumberEvent {
  const factory CategoriesNumberEvent.started() = _Started;
  const factory CategoriesNumberEvent.getCategoriesNumber() = GetCategoriesNumber;
}
