
import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_category_state.freezed.dart';
@Freezed()
class UpdateCategoryState with _$UpdateCategoryState {
  const factory UpdateCategoryState.initial() = _Initial;
  const factory UpdateCategoryState.loading() = LoadingState;
  const factory UpdateCategoryState.success() = SuccessState;
  const factory UpdateCategoryState.failure(String message) = FailureState;
  
}
