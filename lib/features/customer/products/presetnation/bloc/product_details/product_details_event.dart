import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_details_event.freezed.dart';
@Freezed()
class ProductDetailsEvent with _$ProductDetailsEvent {
  const factory ProductDetailsEvent.started() = _Started;
  const factory ProductDetailsEvent.getProductDetails({required int productId}) = GetProductDetailsEvent;
}