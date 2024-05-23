
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/create_product_request_body.dart';
part 'create_product_event.freezed.dart';
@Freezed()
class CreateProductEvent with _$CreateProductEvent {
  const factory CreateProductEvent.started() = _Started;
  const factory CreateProductEvent.createNewProductEvent(
      {required CreateProductRequestBody body}) = createNewProductEvent;
}
