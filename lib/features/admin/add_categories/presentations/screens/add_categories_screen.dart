import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/create_category_bloc/create_category_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_event.dart';

import '../../../../../core/common/widgets/admin_app_bar.dart';
import '../refactors/add_categories_body.dart';

class AddCategoriesScreen extends StatelessWidget {
  const AddCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GetAllAdminCategoriesBloc>()
            ..add(const GetAllAdminCategoriesEvent.getAllAdminCategories()),
        ),
         BlocProvider(
          create: (context) => getIt<CreateCategoryBloc>(),
        )
      ],
      child: Scaffold(
        appBar: AdminAppBar(
            isMain: true,
            backgroundColor: context.color.mainColor!,
            title: 'Categories'),
        body: const AddCategoriesBody(),
      ),
    );
  }
}
