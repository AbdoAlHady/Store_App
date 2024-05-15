import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/delete_category_bloc/delete_category_event.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/delete_category_bloc/delete_category_state.dart';

import '../../../data/repo/categories_admin_repo.dart';

class DeleteCategoryBloc
    extends Bloc<DeleteCategoryEvent, DeleteCategoryState> {
  final CategoriesAdminRepo _repo;
  DeleteCategoryBloc(this._repo) : super(const DeleteCategoryState.initial()) {
    on<DeleteCategoryEvent>(_deleteCategory);
  }

  FutureOr<void> _deleteCategory(event, emit) async {
    emit( DeleteCategoryState.loading(event.categoryId));
    final result = await _repo.deleteCategory(event.categoryId);
    result.when(
      success: (data) {
        emit(const DeleteCategoryState.success());
      },
      failure: (message) {
        emit(DeleteCategoryState.failure(message));
      },
    );
  }
}
