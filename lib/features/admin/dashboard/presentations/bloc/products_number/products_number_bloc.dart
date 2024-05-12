import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/products_number/products_number_event.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/products_number/products_number_state.dart';
import 'package:store_app/features/admin/dashboard/repos/dashboard_repo.dart';

class ProductsNumberBloc
    extends Bloc<ProductsNumberEvent, ProductsNumberState> {
  ProductsNumberBloc(this._repo) : super(const ProductsNumberState.initial()) {
    on<ProductsNumberEvent>(_getProductsNumber);
  }

  final DashboardRepo _repo;

  FutureOr<void> _getProductsNumber(
      ProductsNumberEvent event, Emitter<ProductsNumberState> emit) async {
    emit(const ProductsNumberState.loading());
    final result = await _repo.numberOfProducts();
    result.when(
      success: (productNumberData) {
        emit(ProductsNumberState.success(productNumberData.productsNumber));
      },
      failure: (message) {
        emit(ProductsNumberState.failure(message));
      },
    );
  }
}
