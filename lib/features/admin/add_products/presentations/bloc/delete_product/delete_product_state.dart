
import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_product_state.freezed.dart';
@Freezed()
class DeleteProductState with _$DeleteProductState {
  const factory DeleteProductState.initial() = _Initial;
  const factory DeleteProductState.loading({required String id}) = LoadingState;
  const factory DeleteProductState.success() = SuccessState;
  const factory DeleteProductState.failure({required String message}) = FailureState;
  
}
