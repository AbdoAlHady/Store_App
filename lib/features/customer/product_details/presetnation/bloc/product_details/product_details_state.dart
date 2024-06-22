import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/customer/product_details/data/models/product_details_response.dart';
part 'product_details_state.freezed.dart';
@Freezed()
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.loading() = LoadingState;
  const factory ProductDetailsState.sucess(ProductDetailsModel product) = SuccessState;
  const factory ProductDetailsState.failure(String message) = FailureState;
}
