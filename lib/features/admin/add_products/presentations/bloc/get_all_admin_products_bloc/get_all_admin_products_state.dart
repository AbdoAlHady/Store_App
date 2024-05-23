
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/get_all_products_response.dart';
part 'get_all_admin_products_state.freezed.dart';

@Freezed()
class GetAllAdminProductsState with _$GetAllAdminProductsState {
  const factory GetAllAdminProductsState.loading() = LoadingState;
  const factory GetAllAdminProductsState.success(List<GetAllProductsModel> products) = SuccessState;  
  const factory GetAllAdminProductsState.empty() = EmptyState;
  const factory GetAllAdminProductsState.failure(String message) = FailureState;
}
