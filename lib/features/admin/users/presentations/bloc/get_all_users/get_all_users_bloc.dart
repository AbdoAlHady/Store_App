import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/users/data/repo/users_repo.dart';
import 'package:store_app/features/admin/users/presentations/bloc/get_all_users/get_all_users_event.dart';
import 'package:store_app/features/admin/users/presentations/bloc/get_all_users/get_all_users_state.dart';

class GetAllUsersBloc extends Bloc<GetAllUsersEvent, GetAllUsersState> {
  final UsersRepo _repo;
  GetAllUsersBloc(this._repo) : super(const GetAllUsersState.loading()) {
    on<GetUsersEvent>(_getAllUsers);
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
        emit(GetAllUsersState.success(usersResponse.data.users!));
      }
    }, failure: (message) {
      emit(GetAllUsersState.failure(message));
    });
  }
}
