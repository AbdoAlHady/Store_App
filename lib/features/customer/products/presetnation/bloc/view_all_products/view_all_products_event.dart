import 'package:equatable/equatable.dart';

abstract class ViewAllProductsEvent extends Equatable {
  const ViewAllProductsEvent();
}

class GetProductsViewAllEvents extends ViewAllProductsEvent {
  const GetProductsViewAllEvents();

  @override
  List<Object> get props => [];
} 
class LoadMoreProductsEvents extends ViewAllProductsEvent {
  const LoadMoreProductsEvents();

  @override
  List<Object> get props => [];
} 