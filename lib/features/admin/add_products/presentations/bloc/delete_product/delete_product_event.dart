import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_product_event.freezed.dart';

@Freezed()
class DeleteProductEvent with _$DeleteProductEvent {
  const factory DeleteProductEvent.started() = _Started;
  const factory DeleteProductEvent.deleteProduct({required String id}) = RemoveProductEvent;
}