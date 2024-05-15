import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/create_category_bloc/create_category_event.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/create_category_bloc/create_category_state.dart';

class CreateCategoryBloc
    extends Bloc<CreateCategoryEvent, CreateCategoryState> {
  final CategoriesAdminRepo _repo;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController categoryName = TextEditingController();
  CreateCategoryBloc(this._repo) : super(const CreateCategoryState.initial()) {
    on<CreateCategoryEvent>(_createNewCategory);
  }

  FutureOr<void> _createNewCategory(event, emit) async {
    emit(const CreateCategoryState.loading());
    final result = await _repo.createCategory(event.body);
    result.when(
      success: (data) {
        emit(const CreateCategoryState.success());
      },
      failure: (message) {
        emit(CreateCategoryState.failure(message));
      },
    );
  }
}
