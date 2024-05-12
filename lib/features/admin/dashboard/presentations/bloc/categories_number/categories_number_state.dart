
import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_number_state.freezed.dart';
@Freezed()
class CategoriesNumberState with _$CategoriesNumberState {
  const factory CategoriesNumberState.initial() = _Initial;
  const factory CategoriesNumberState.loading() = LoadingState;
  const factory CategoriesNumberState.success(String categoriesNumber) = SuccessState;
  const factory CategoriesNumberState.failure(String errorMessage) = FailureState;
}
