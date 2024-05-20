import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_products/data/repo/prodcut_admin_repo.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/get_all_admin_products_bloc/get_all_admin_products_event.dart';

import 'get_all_admin_products_state.dart';

class GetAllAdminProductsBloc
    extends Bloc<GetAllAdminProductsEvent, GetAllAdminProductsState> {
  final ProductAdminRepo _repo;
  GetAllAdminProductsBloc(this._repo) : super(const GetAllAdminProductsState.loading()) {
    on<GetAdminProducts>(_getAllProducts);
  }

  FutureOr<void> _getAllProducts(event, emit)async {
    final result= await _repo.getAllAdminProducts();
    result.when(
      success: (data) {
        if (data.products.isEmpty) {
          emit(const GetAllAdminProductsState.empty());
        } else {
          emit(GetAllAdminProductsState.success(data.products));
        }
      },
      failure: (message) {
        emit(GetAllAdminProductsState.failure(message));
      },
    );
  }
}
