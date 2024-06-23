import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/product_repo.dart';
import 'product_details_event.dart';
import 'product_details_state.dart';

class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final ProductsRepo _repo;
  ProductDetailsBloc(this._repo) : super(const ProductDetailsState.loading()) {
    on<GetProductDetailsEvent>(_getProductDetails);
  }

  FutureOr<void> _getProductDetails(GetProductDetailsEvent event, emit) async{
    emit(const ProductDetailsState.loading());
    final result=await _repo.getProductDetails(event.productId);
    result.when(
      success: (productResponse){
        emit(ProductDetailsState.sucess(productResponse.data.productModel));
      },
      failure: (message){
        emit(ProductDetailsState.failure(message));
      }
    );
    
  }
}
