import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';

import '../../../../../core/common/widgets/admin_app_bar.dart';
import '../refactors/add_categories_body.dart';

class AddCategoriesScreen extends StatelessWidget {
  const AddCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AdminAppBar(
          isMain: true,
          backgroundColor: context.color.mainColor!,
          title: 'Categories'),
      body: const AddCategoriesBody(),
    );
  }
}
