
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_product_state.freezed.dart';
@Freezed()
class CreateProductState with _$CreateProductState {
  const factory CreateProductState.initial() = _Initial;
  const factory CreateProductState.loading() = LoadingState;
  const factory CreateProductState.success() = SuccessState;
  const factory CreateProductState.failure(String message) = FailureState;
  
  
}
