import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/delete_product/delete_product_event.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/delete_product/delete_product_state.dart';

import '../../../data/repo/prodcut_admin_repo.dart';

class DeleteProductBloc extends Bloc<DeleteProductEvent, DeleteProductState> {
  final ProductAdminRepo _repo;
  DeleteProductBloc(this._repo) : super(const DeleteProductState.initial()) {
    on<RemoveProductEvent>(_deleteProduct);
  }
  // Delete Product
  FutureOr<void> _deleteProduct(RemoveProductEvent event, emit) async {
    emit(DeleteProductState.loading(id: event.productId));
    final result = await _repo.deleteProduct(event.productId);
    result.when(
      success: (value) {
        emit(const DeleteProductState.success());
      },
      failure: (message) {
        emit(DeleteProductState.failure(message: message));
      },
    );
  }
}
