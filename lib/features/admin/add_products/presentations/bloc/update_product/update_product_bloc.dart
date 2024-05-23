import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_products/data/repo/prodcut_admin_repo.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/update_product/update_product_state.dart';

import 'update_product_event.dart';

class UpdateProductBloc extends Bloc<UpdateProductEvent, UpdateProductState> {
  final ProductAdminRepo _repo;
  UpdateProductBloc(this._repo)
      : super(const UpdateProductState.initial()) {
    on<UpdateProduct>(_updateProduct);
  }

  FutureOr<void> _updateProduct(UpdateProduct event, emit) async {
    emit(const UpdateProductState.loading());
    final result = await _repo.updateProduct(event.body);
    result.when(
      success: (data) => emit(const UpdateProductState.success()),
      failure: (message) => emit(UpdateProductState.failure(message)),
    );
  }
}
