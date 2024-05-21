
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/delete_product/delete_product_event.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/delete_product/delete_product_state.dart';

import '../../../data/repo/prodcut_admin_repo.dart';

class DeleteProductBloc extends Bloc<DeleteProductEvent, DeleteProductState> {
  final ProductAdminRepo _repo;
  DeleteProductBloc(this._repo) : super(const DeleteProductState.initial()) {
    on<DeleteProductEvent>(_deleteProduct);
  }

  FutureOr<void> _deleteProduct(event, emit) {
     
  }
}
