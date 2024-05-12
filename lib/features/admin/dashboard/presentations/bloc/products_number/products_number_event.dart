
import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_number_event.freezed.dart';
@Freezed()
class ProductsNumberEvent with _$ProductsNumberEvent {
  const factory ProductsNumberEvent.started() = _Started;
  const factory ProductsNumberEvent.getProductsNumber() = GetProductsNumber;
}