import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_products_event.freezed.dart';
@Freezed()
class HomeProductsEvent with _$HomeProductsEvent {
  const factory HomeProductsEvent.started() = _Started;
  const factory HomeProductsEvent.getAllProducts() = GetAllProductsEvent;
}