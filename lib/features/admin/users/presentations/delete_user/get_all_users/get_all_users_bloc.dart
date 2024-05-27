import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/users/data/models/get_all_users_response.dart';
import 'package:store_app/features/admin/users/data/repo/users_repo.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/get_all_users/get_all_users_event.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/get_all_users/get_all_users_state.dart';

class GetAllUsersBloc extends Bloc<GetAllUsersEvent, GetAllUsersState> {
  final UsersRepo _repo;
  List<GetAllUsersModel> users = [];
  final TextEditingController searchController = TextEditingController();

  GetAllUsersBloc(this._repo) : super(const GetAllUsersState.loading()) {
    on<GetUsersEvent>(_getAllUsers);
    on<SearchForUserEvent>(_searchForUser);
  }
  // Search for user
  FutureOr<void> _searchForUser(SearchForUserEvent event, emit) async {
    final result = users
        .where((element) =>
            element.name!
                .toLowerCase()
                .startsWith(event.searchName!.toLowerCase().trim()) ||
            element.email!
                .toLowerCase()
                .startsWith(event.searchName!.toLowerCase().trim()))
        .toList();
    if (result.isEmpty) {
      emit(const GetAllUsersState.empty());
    } else {
      emit(GetAllUsersState.search(result));
    }
  }

  FutureOr<void> _getAllUsers(event, emit) async {
    if (event.isLoading) {
      emit(const GetAllUsersState.loading());
    }
    final result = await _repo.getAllUsers();
    result.when(success: (usersResponse) {
      if (usersResponse.data.users!.isEmpty) {
        emit(const GetAllUsersState.empty());
      } else {
        users = usersResponse.data.users!;
        emit(GetAllUsersState.success(usersResponse.data.users!));
      }
    }, failure: (message) {
      emit(GetAllUsersState.failure(message));
    });
  }
}
