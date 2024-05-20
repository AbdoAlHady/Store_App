import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import '../../../../../core/common/widgets/admin_app_bar.dart';
import '../bloc/get_all_admin_products_bloc/get_all_admin_products_bloc.dart';
import '../bloc/get_all_admin_products_bloc/get_all_admin_products_event.dart';
import '../refactors/add_products_screen_body.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetAllAdminProductsBloc>(
          create: (context) => getIt<GetAllAdminProductsBloc>()
            ..add(const GetAllAdminProductsEvent.getAdminProducts(
                isLoading: true)),
        ),
       
      ],
      child: Scaffold(
        appBar: AdminAppBar(
            isMain: true,
            backgroundColor: context.color.mainColor!,
            title: 'Products'),
        body: const AddProductScreenBody(),
      ),
    );
  }
}
