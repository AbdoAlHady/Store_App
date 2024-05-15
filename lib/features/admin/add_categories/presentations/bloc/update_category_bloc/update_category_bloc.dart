import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/update_category_bloc/update_category_event.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/update_category_bloc/update_category_state.dart';

class UpdateCategoryBloc
    extends Bloc<UpdateCategoryEvent, UpdateCategoryState> {
  final CategoriesAdminRepo _repo;
  UpdateCategoryBloc(this._repo) : super(const UpdateCategoryState.initial()) {
    on<UpdateCategory>(_updateCategory);
  }

  FutureOr<void> _updateCategory(UpdateCategory event, emit) async {
    emit(const UpdateCategoryState.loading());
    final result = await _repo.updateCategory(event.body);
    result.when(
      success: (data) {
        emit(const UpdateCategoryState.success());
      },
      failure: (message) => emit(UpdateCategoryState.failure(message)),
    );
  }
}
