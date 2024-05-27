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

  FutureOr<void> _getAllUsers(event, emit) {
    // TODO: implement event handler
  }
}
