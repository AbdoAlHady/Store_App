
import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_number_state.freezed.dart';
@Freezed()
class ProductsNumberState with _$ProductsNumberState {
  const factory ProductsNumberState.initial() = _Initial;
  const factory ProductsNumberState.loading() = LoadingState;
  const factory ProductsNumberState.success(String productsNumber) = SuccessState;
  const factory ProductsNumberState.failure(String errorMessage) = FailureState;
}
