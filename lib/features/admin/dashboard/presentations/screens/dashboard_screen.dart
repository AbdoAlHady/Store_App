import 'package:flutter/material.dart';
import 'package:store_app/core/common/widgets/admin_app_bar.dart';
import 'package:store_app/core/extensions/context_extension.dart';

import '../refactors/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
          isMain: true,
          backgroundColor: context.color.mainColor!,
          title: 'Dahsboard'),
      body: const DashboardBody(),
    );
  }
}
