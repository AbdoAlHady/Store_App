import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/add_categories/data/models/categories_response_model.dart';
part 'home_categories_state.freezed.dart';
@Freezed()
class HomeCategoriesState with _$HomeCategoriesState {
  const factory HomeCategoriesState.loading() = LoadingState; 
  const factory HomeCategoriesState.success(CategoriesResponse categories) = SuccessState;
  const factory HomeCategoriesState.empty() = EmptyState;
  const factory HomeCategoriesState.failure(String message) = FailureState;
}
