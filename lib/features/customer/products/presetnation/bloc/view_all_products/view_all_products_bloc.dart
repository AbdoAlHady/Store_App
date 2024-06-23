import 'dart:async';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/product_repo.dart';
import 'view_all_products_event.dart';
import 'view_all_products_state.dart';

class ViewAllProductsBloc
    extends Bloc<ViewAllProductsEvent, ViewAllProductsState> {
  final ProductsRepo _repo;
  ViewAllProductsBloc(this._repo)
      : super(
            const ViewAllProductsInitial(productsList: [], hasMoreData: true)) {
    on<GetProductsViewAllEvents>(_getViewAllProdducts);
    on<LoadMoreProductsEvents>(_loadMoreProducts, transformer: droppable());
  }
  int offset = 6;

  FutureOr<void> _getViewAllProdducts(
      GetProductsViewAllEvents event, emit) async {
    emit(const ViewAllProductsLoading(productsList: [], hasMoreData: true));
    final result = await _repo.viewAllProducts(0);
    result.when(
      success: (data) {
        emit(ViewAllProductsSuccess(
            productsList: data.products, hasMoreData: true));
      },
      failure: (error) {
        emit(ViewAllProductsFailure(
            errorMessage: error,
            productsList: state.productsList,
            hasMoreData: true));
      },
    );
  }

  // Load more products

  FutureOr<void> _loadMoreProducts(event, emit) async {
    if (!state.hasMoreData) return;
    offset += 6;
    emit(ViewAllProductsLoading(
        productsList: state.productsList, hasMoreData: state.hasMoreData));
    final result = await _repo.viewAllProducts(offset);
    result.when(
      success: (data) {
        final newList = [...state.productsList, ...data.products];
        emit(
          ViewAllProductsSuccess(
            productsList: newList,
            hasMoreData: !(data.products.length > 6),
          ),
        );
      },
      failure: (error) {
        emit(ViewAllProductsFailure(
            errorMessage: error,
            productsList: state.productsList,
            hasMoreData: state.hasMoreData));
      },
    );
  }

  void handlePagination(
      {required ScrollController controller, required double position}) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        final offeset = controller.offset;
        final maxScroll = controller.position.maxScrollExtent;
        if (offeset >= maxScroll - position) {
          add(const LoadMoreProductsEvents());
        }
      },
    );
  }
}
