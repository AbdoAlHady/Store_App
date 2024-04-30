import 'package:flutter/material.dart';
import 'package:store_app/core/routes/base_routes.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/features/auth/presentaions/screens/login_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return BaseRoute(page: const LoginScreen());
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
