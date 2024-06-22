import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/customer/category_products/presentation/bloc/category_products/category_products_event.dart';
import 'package:store_app/features/customer/category_products/presentation/bloc/category_products/category_products_state.dart';

import '../../../data/repos/category_products_repo.dart';

class CategoryProductsBloc
    extends Bloc<CategoryProductsEvent, CategoryProductsState> {
  final CategoryProductsRepo _repo;
  CategoryProductsBloc(this._repo)
      : super(const CategoryProductsState.loading()) {
    on<GetCategoryProductsEvent>(_getCategoryProducts);
  }

  FutureOr<void> _getCategoryProducts(
      GetCategoryProductsEvent event, emit) async {
    emit(const CategoryProductsState.loading());
    final result = await _repo.getCategoryProducts(event.categoryid);
    result.when(success: (data) {
      if (data.products.isEmpty) {
        emit(const CategoryProductsState.empty());
      } else {
        emit(CategoryProductsState.success(productLis: data.products));
      }
    }, failure: (error) {
      emit(CategoryProductsState.failure(error: error));
    });
  }
}
