import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_products/home_products_event.dart';

import '../../../data/repos/home_repo.dart';
import 'home_products_state.dart';

class HomeProductsBloc extends Bloc<HomeProductsEvent, HomeProductsState> {
  final HomeRepo _repo;
  HomeProductsBloc(this._repo) : super(const HomeProductsState.loading()) {
    on<GetAllProductsEvent>(_getAllProducts);
  }

  FutureOr<void> _getAllProducts(event, emit) async {
    emit(const HomeProductsState.loading());
    final result = await _repo.getAllProducts();
    result.when(
      success: (productsResponse) {
        if (productsResponse.products.isEmpty) {
          emit(const HomeProductsState.empty());
        } else {
          emit(HomeProductsState.success(productsResponse.products));
        }
      },
      failure: (message) => emit(HomeProductsState.failure(message)),
    );
  }
}
