
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_category_state.freezed.dart';
@Freezed()
class CreateCategoryState with _$CreateCategoryState {
  const factory CreateCategoryState.initial() = _Initial;
  const factory CreateCategoryState.loading() = LoadingState;
  const factory CreateCategoryState.success() = SuccessState;
  const factory CreateCategoryState.failure(String message) = FailureState;
}
