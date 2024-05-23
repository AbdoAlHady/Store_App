import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repo/prodcut_admin_repo.dart';
import 'create_product_event.dart';
import 'create_product_state.dart';

class CreateProductBloc extends Bloc<CreateProductEvent, CreateProductState> {
  final ProductAdminRepo _productAdminRepo;
  CreateProductBloc(this._productAdminRepo)
      : super(const CreateProductState.initial()) {
    on<createNewProductEvent>(_createProduct);
  }

  FutureOr<void> _createProduct(event, emit)async {
    emit(const CreateProductState.loading());
    final result=await _productAdminRepo.createNewProduct(event.body);
    result.when(success: (value) {
      emit(const CreateProductState.success());
    }, failure: (message) {
      emit(CreateProductState.failure(message));
    });
  }
}
