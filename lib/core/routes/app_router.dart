import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/routes/base_routes.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/features/auth/presentaions/bloc/auth_bloc.dart';
import 'package:store_app/features/auth/presentaions/screens/login_screen.dart';
import 'package:store_app/features/auth/presentaions/screens/sign_up_screen.dart';
import 'package:store_app/features/customer/home_customer.dart';

import '../../features/admin/home_admin.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return BaseRoute(
            page: BlocProvider(
          create: (context) => getIt<AuthBloc>(),
          child: const LoginScreen(),
        ));
      case Routes.signupScreen:
        return BaseRoute(page: const SignUpScreen());
      case Routes.homeAdmin:
        return BaseRoute(page: const HomeAdmin());
      case Routes.homeCustomer:
        return BaseRoute(page: const HomeCustomer());
      default:
        return BaseRoute(
            page: Scaffold(
          appBar: AppBar(
            title: const Text('Not Found'),
          ),
          body: const Center(
            child: Text('Page Not Found'),
          ),
        ));
    }
  }
}
