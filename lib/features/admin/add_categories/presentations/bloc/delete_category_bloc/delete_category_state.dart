
import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_category_state.freezed.dart';
@Freezed()
class DeleteCategoryState with _$DeleteCategoryState {
  const factory DeleteCategoryState.initial() = _Initial;
  const factory DeleteCategoryState.loading() = LoadingState;
  const factory DeleteCategoryState.success() = SuccessState;
  const factory DeleteCategoryState.failure(String message) = FailureState;
}
