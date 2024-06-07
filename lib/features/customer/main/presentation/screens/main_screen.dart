import 'package:flutter/material.dart';

import '../refactors/main_customer_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainCustomerAppBar(),
    );
  }
}