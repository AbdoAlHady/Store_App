import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_product_state.freezed.dart';
@Freezed()
class UpdateProductState with _$UpdateProductState {
  const factory UpdateProductState.initial() = _Initial;
  const factory UpdateProductState.loading() = LoadingState;
  const factory UpdateProductState.success() = SuccessState;
  const factory UpdateProductState.failure(String message) = FailureState;
}
