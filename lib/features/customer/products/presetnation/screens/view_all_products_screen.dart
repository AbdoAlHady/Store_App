import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/common/widgets/customer_app_bar.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/features/customer/products/presetnation/bloc/view_all_products/view_all_products_bloc.dart';
import 'package:store_app/features/customer/products/presetnation/bloc/view_all_products/view_all_products_event.dart';

import '../refactors/view_all_products_body.dart';

class ViewAllProductsScreen extends StatelessWidget {
  const ViewAllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ViewAllProductsBloc>()..add(const GetProductsViewAllEvents()),
      child: Scaffold(
        appBar: CustomerAppBar(title: context.translator(LangKeys.viewAll)),
        body: const ViewAllProductsBody(),
      ),
    );
  }
}
