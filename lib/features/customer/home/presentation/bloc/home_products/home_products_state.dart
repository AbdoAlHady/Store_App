import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';
part 'home_products_state.freezed.dart';
@Freezed()
class HomeProductsState with _$HomeProductsState {
  const factory HomeProductsState.loading() = LoadingState;
  const factory HomeProductsState.success(List<GetAllProductsModel> products) = SucessState;
  const factory HomeProductsState.empty() = EmptyState;
  const factory HomeProductsState.failure(String message) = FailureState;
}
