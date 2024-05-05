import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/core/helper/cahec_helper.dart';
import 'package:store_app/core/helper/shared_prefrences_keys.dart';
import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/repos/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo _authRepo;
  AuthBloc(this._authRepo) : super(const _Initial()) {
    on<LoginEvent>(_login);
  }

  // Variables
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // User Login
  FutureOr<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _authRepo.login(
        body: LoginRequestBody(
      email: emailController.text.trim(),
      password: passwordController.text,
    ));
    result.when(
      success: (loginResponse) async {
        // User Token
        final token = loginResponse.data.login.accessToken ?? '';
        // Save Access Token
        await CacheHelper()
            .saveData(key: SharedPrefKeys.accessToken, value: token);
        // Get User 
        final user= await _authRepo.getUserRole(token);
        // Save User ID
        await CacheHelper()
            .saveData(key: SharedPrefKeys.userId, value: user.id??0);
        emit( AuthState.success(userRole: user.role ?? ''));
      },
      failure: (message) => AuthState.failure(message),
    );
  }
}
