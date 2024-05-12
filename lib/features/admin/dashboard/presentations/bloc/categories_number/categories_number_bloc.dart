import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repos/dashboard_repo.dart';
import 'categories_number_event.dart';
import 'categories_number_state.dart';

class CategoriesNumberBloc
    extends Bloc<CategoriesNumberEvent, CategoriesNumberState> {
  CategoriesNumberBloc(this._repo)
      : super(const CategoriesNumberState.initial()) {
    on<CategoriesNumberEvent>(_getCategoriesNumber);
  }
  final DashboardRepo _repo;

  FutureOr<void> _getCategoriesNumber(event, emit) async {
    emit(const CategoriesNumberState.loading());
    final result = await _repo.numberOfCategories();
    result.when(
      success: (categoriesData) {
        emit(CategoriesNumberState.success(categoriesData.categoriesNumber));
      },
      failure: (message) {
        emit(CategoriesNumberState.failure(message));
      },
    );
  }
}
