import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/create_category_bloc/create_category_event.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/create_category_bloc/create_category_state.dart';

class CreateCategoryBloc
    extends Bloc<CreateCategoryEvent, CreateCategoryState> {
  final CategoriesAdminRepo _repo;
  CreateCategoryBloc(this._repo) : super(const CreateCategoryState.initial()) {
    on<CreateCategoryEvent>(_createNewCategory);
  }

  FutureOr<void> _createNewCategory(event, emit) {}
}
