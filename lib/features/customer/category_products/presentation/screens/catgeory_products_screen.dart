import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/common/widgets/customer_app_bar.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/features/customer/category_products/presentation/bloc/category_products/category_products_bloc.dart';
import 'package:store_app/features/customer/category_products/presentation/bloc/category_products/category_products_event.dart';

import '../refactors/category_products_body.dart';

class CategoryProductsScreen extends StatelessWidget {
  const CategoryProductsScreen({super.key, required this.categoryInfo});
  final ({String categoryName, int categoryId}) categoryInfo;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryProductsBloc>()
        ..add(
            CategoryProductsEvent.getCategoryProducts(categoryInfo.categoryId)),
      child: Scaffold(
        appBar: CustomerAppBar(title: categoryInfo.categoryName),
        body:  CategoryProductsBody(categoryid: categoryInfo.categoryId),
      ),
    );
  }
}
