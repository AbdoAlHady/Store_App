import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/customer/profile/data/repos/profile_repos.dart';
import 'package:store_app/features/customer/profile/presentation/bloc/profile/profile_event.dart';
import 'package:store_app/features/customer/profile/presentation/bloc/profile/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepos _repos;
  ProfileBloc(this._repos) : super(const ProfileState.loading()) {
    on<GetUserInfoEvent>(_getUserInfo);
  }

  FutureOr<void> _getUserInfo(GetUserInfoEvent event, emit) async {
    emit(const ProfileState.loading());
    final result = await _repos.getUserInfo();
    result.when(
        success: (userModel) {
          emit(ProfileState.success(userModel));
        },
        failure: (message) {
          emit(ProfileState.error(message));
        });
  }
}
