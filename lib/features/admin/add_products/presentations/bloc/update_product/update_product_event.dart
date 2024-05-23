import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/add_products/data/models/update_product_request_body.dart';

part 'update_product_event.freezed.dart';
@Freezed()
class UpdateProductEvent with _$UpdateProductEvent {
  const factory UpdateProductEvent.started() = _Started;
  const factory UpdateProductEvent.updateProduct(UpdateProductRequestBody body) = UpdateProduct;
}