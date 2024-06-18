import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/customer/home/data/repos/home_repo.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_catgories/home_categories_event.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_catgories/home_categories_state.dart';

class HomeCategoriesBloc
    extends Bloc<HomeCategoriesEvent, HomeCategoriesState> {
  final HomeRepo homeRepo;
  HomeCategoriesBloc(this.homeRepo)
      : super(const HomeCategoriesState.loading()) {
    on<GetAllCategoriesEvent>(_getAllCategories);
  }

  FutureOr<void> _getAllCategories(event, emit) async {
    final result = await homeRepo.getAllCategories();
    result.when(success: (response) {
      if (response.categoryList.isEmpty) {
        emit(const HomeCategoriesState.empty());
      } else {
        emit(HomeCategoriesState.success(response));
      }
    }, failure: (message) {
      emit(HomeCategoriesState.failure(message));
    });
  }
}
