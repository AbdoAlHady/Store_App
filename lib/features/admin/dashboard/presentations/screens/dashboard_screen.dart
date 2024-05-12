import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/common/widgets/admin_app_bar.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/categories_number/categories_number_bloc.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/categories_number/categories_number_event.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/products_number/products_number_bloc.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/products_number/products_number_event.dart';

import '../bloc/users_number/users_number_bloc.dart';
import '../bloc/users_number/users_number_event.dart';
import '../refactors/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ProductsNumberBloc>()..add(const ProductsNumberEvent.getProductsNumber())),
        BlocProvider(create: (context) => getIt<CategoriesNumberBloc>()..add(const CategoriesNumberEvent.getCategoriesNumber())),
        BlocProvider(create: (context) => getIt<UsersNumberBloc>()..add(const UsersNumberEvent.getUsersNumber())),
      ],
      child: Scaffold(
        appBar: AdminAppBar(
            isMain: true,
            backgroundColor: context.color.mainColor!,
            title: 'Dahsboard'),
        body: const DashboardBody(),
      ),
    );
  }
}
