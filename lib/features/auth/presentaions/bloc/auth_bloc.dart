import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/core/helper/cahec_helper.dart';
import 'package:store_app/core/helper/shared_prefrences_keys.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/repos/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepo) : super(const _Initial()) {
    on<LoginEvent>(_login);
  }
  final AuthRepo _authRepo;

  // Variables
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  
  // User Login
  FutureOr<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _authRepo.login(
      body: LoginRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
    );
     await result.when(
      success: (loginData) async {
        // user token
        final token = loginData.data.login.accessToken ?? '';
        // save token in shared preferences
        await CacheHelper()
            .saveData(key: SharedPrefKeys.accessToken, value: token);
        // get user role
        final user = await _authRepo.getUserRole(token);
        await CacheHelper()
            .saveData(key: SharedPrefKeys.userId, value: user.id ?? 0);
            await CacheHelper()
            .saveData(key: SharedPrefKeys.userRole, value: user.role ?? '');
        emit(AuthState.success(userRole: user.role ?? ''));
      },
      failure: (error) {
        emit(const AuthState.failure(LangKeys.loggedError));
      },
    );
  }
}
