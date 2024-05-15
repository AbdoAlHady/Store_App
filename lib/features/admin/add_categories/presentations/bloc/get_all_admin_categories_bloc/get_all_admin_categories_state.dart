
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/categories_response_model.dart';
part 'get_all_admin_categories_state.freezed.dart';
@Freezed()
class GetAllAdminCategoriesState with _$GetAllAdminCategoriesState {
  const factory GetAllAdminCategoriesState.loading() = loadingState;
  const factory GetAllAdminCategoriesState.success(List<CategoriesModel> categories) = SuccessState;
  const factory GetAllAdminCategoriesState.failure(String message) = FailureState;
  const factory GetAllAdminCategoriesState.empty() = EmptyState;
}
