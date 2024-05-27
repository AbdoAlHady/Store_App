import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/features/admin/users/presentations/refactors/users_body.dart';

import '../../../../../core/common/widgets/admin_app_bar.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AdminAppBar(
          isMain: true,
          backgroundColor: context.color.mainColor!,
          title: 'Users'),
      body:const UsersAdminBody(),
    );
  }
}