import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'get_all_admin_categories_event.dart';
import 'get_all_admin_categories_state.dart';

class GetAllAdminCategoriesBloc
    extends Bloc<GetAllAdminCategoriesEvent, GetAllAdminCategoriesState> {
  final CategoriesAdminRepo _repo;
  GetAllAdminCategoriesBloc(this._repo)
      : super(const GetAllAdminCategoriesState.loading()) {
    on<GetAllAdminCategoriesEvent>(_getAllAdminCategories);
  }

  FutureOr<void> _getAllAdminCategories(event, emit) async {
    if (event.isLoading) {
      emit(const GetAllAdminCategoriesState.loading());
    }
    final result = await _repo.getAllCategoriesAdmin();
    result.when(success: (categoriesResponseData) {
      if (categoriesResponseData.data.categories == []) {
        emit(const GetAllAdminCategoriesState.empty());
      } else {
        emit(GetAllAdminCategoriesState.success(
            categoriesResponseData));
      }
    }, failure: (error) {
      emit(GetAllAdminCategoriesState.failure(error));
    });
  }
}
