

import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/users_number/users_number_state.dart';

import '../../../repos/dashboard_repo.dart';
import 'users_number_event.dart';

class UsersNumberBloc extends Bloc<UsersNumberEvent, UsersNumberState> {
  UsersNumberBloc(this._repo) : super(const UsersNumberState.initial()) {
    on<UsersNumberEvent>(_getUsersNumber);
  }
  final DashboardRepo _repo;

  FutureOr<void> _getUsersNumber(event, emit) async{
    emit(const UsersNumberState.loading());
    final result = await _repo.numberOfUsers();
    result.when(
      success: (usersNumberData) {
        emit(UsersNumberState.success(usersNumberData.usersNumber));
      },
      failure: (message) {
        emit(UsersNumberState.failure(message));
      },
    ); 
  }
}
