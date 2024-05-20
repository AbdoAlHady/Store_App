
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_all_admin_products_event.freezed.dart';
@Freezed()
class GetAllAdminProductsEvent with _$GetAllAdminProductsEvent {
  const factory GetAllAdminProductsEvent.started() = _Started;
  const factory GetAllAdminProductsEvent.getAdminProducts() = GetAdminProducts;
}