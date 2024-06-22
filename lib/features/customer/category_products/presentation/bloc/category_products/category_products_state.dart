import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';
part 'category_products_state.freezed.dart';
@Freezed()
class CategoryProductsState with _$CategoryProductsState {
  const factory CategoryProductsState.loading() = LaodingState;
  const factory CategoryProductsState.sussess({required List<GetAllProductsModel>productLis}) = SuccessState;
  const factory CategoryProductsState.empty() = EmptyState;
  const factory CategoryProductsState.failure({required String error}) = FailureState;
}
