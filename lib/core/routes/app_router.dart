import 'package:flutter/material.dart';
import 'package:store_app/core/routes/base_routes.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/test_one_screen.dart';
import 'package:store_app/test_two_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.testOneScreen:
        return BaseRoute(page: const TestOneScreen());
      case Routes.testTwoScreen:
        return BaseRoute(page: const TextTwoScreen());
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
