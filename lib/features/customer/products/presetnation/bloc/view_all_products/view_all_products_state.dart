import 'package:equatable/equatable.dart';
import 'package:store_app/features/admin/add_products/data/models/get_all_products_response.dart';

abstract class ViewAllProductsState extends Equatable {
  const ViewAllProductsState(
      {required this.productsList, required this.hasMoreData});
  final List<GetAllProductsModel> productsList;
  final bool hasMoreData;

  @override
  List<Object> get props => [productsList, hasMoreData];
}

class ViewAllProductsInitial extends ViewAllProductsState {
  const ViewAllProductsInitial(
      {required super.productsList, required super.hasMoreData});
}

class ViewAllProductsLoading extends ViewAllProductsState {
  const ViewAllProductsLoading(
      {required super.productsList, required super.hasMoreData});
}

class ViewAllProductsSuccess extends ViewAllProductsState {
  const ViewAllProductsSuccess(
      {required super.productsList, required super.hasMoreData});
}

class ViewAllProductsFailure extends ViewAllProductsState {
  const ViewAllProductsFailure({
    required super.productsList,
    required super.hasMoreData,
    required this.errorMessage,
  });

  final String errorMessage;
  @override
  List<Object> get props => [errorMessage];
}
