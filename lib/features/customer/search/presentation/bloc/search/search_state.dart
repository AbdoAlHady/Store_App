import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';
part 'search_state.freezed.dart';

@Freezed()
class SearchState with _$SearchState {
  const factory SearchState.initial() = _InitialState;
  const factory SearchState.loading() = LoadingState;
  const factory SearchState.success({ required List<GetAllProductsModel>products}) = SuccessState; 
  const factory SearchState.empty() = EmptyState;
  const factory SearchState.failure({ required String message}) = FailureState;

}
