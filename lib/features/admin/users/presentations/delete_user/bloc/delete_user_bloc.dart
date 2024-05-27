import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/users/data/repo/users_repo.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/bloc/delete_user_event.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/bloc/delete_user_state.dart';

class DeleteUserBloc extends Bloc<DeleteUserEvent, DeleteUserState> {
  final UsersRepo _repo;
  DeleteUserBloc(this._repo) : super(const DeleteUserState.initial()) {
    on<RemoveUserEvent>(_deleteUser);
  }

  FutureOr<void> _deleteUser(RemoveUserEvent event, emit) {
    // TODO: implement event handler
  }
}
