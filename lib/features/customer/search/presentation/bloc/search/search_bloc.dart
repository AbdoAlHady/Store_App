import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/customer/search/data/repos/search_repo.dart';
import 'package:store_app/features/customer/search/presentation/bloc/search/search_event.dart';
import 'package:store_app/features/customer/search/presentation/bloc/search/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepo _repo;
  SearchBloc(this._repo) : super(const SearchState.initial()) {
    on<SearchProductEvent>(_searchForProduct);
  }

  FutureOr<void> _searchForProduct(SearchProductEvent event, emit) async {
    emit(const SearchState.loading());
    final result = await _repo.searchForProduct(event.body);
    result.when(
      success: (data) {
        if (data.products.isEmpty) {
          emit(const SearchState.empty());
        } else {
          emit(SearchState.success(products: data.products));
        }
      },
      failure: (message) {
        emit(SearchState.failure(message: message));
      },
    );
  }
}
