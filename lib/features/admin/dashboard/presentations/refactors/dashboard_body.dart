import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/utils/app_images.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/categories_number/categories_number_bloc.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/categories_number/categories_number_state.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/products_number/products_number_bloc.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/products_number/products_number_state.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/users_number/users_number_bloc.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/users_number/users_number_state.dart';
import 'package:store_app/features/admin/dashboard/presentations/widgets/dashboard_container.dart';

import '../bloc/categories_number/categories_number_event.dart';
import '../bloc/products_number/products_number_event.dart';
import '../bloc/users_number/users_number_event.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<ProductsNumberBloc>().add(const ProductsNumberEvent.getProductsNumber());
          context.read<CategoriesNumberBloc>().add(const CategoriesNumberEvent.getCategoriesNumber());
          context.read<UsersNumberBloc>().add(const UsersNumberEvent.getUsersNumber());
          
        },
        child: ListView(
          children: [
            // Product,
            BlocBuilder<ProductsNumberBloc, ProductsNumberState>(
              builder: (context, state) {
                return state.when(initial: () {
                  return const SizedBox();
                }, loading: () {
                  return const DashboardContainer(
                      title: 'Prodcuts',
                      number: '0',
                      image: AppImages.productsDrawer,
                      isLoading: true);
                }, success: (productsNumber) {
                  return DashboardContainer(
                      title: 'Prodcuts',
                      number: productsNumber,
                      image: AppImages.productsDrawer,
                      isLoading: false);
                }, failure: (errorMessage) {
                  return Center(
                    child: TextApp(
                      text: errorMessage,
                      style: context.textStyle
                          .copyWith(color: Colors.red, fontSize: 16.sp),
                    ),
                  );
                });
              },
            ),
            verticalSpace(15),
            // Categories
            BlocBuilder<CategoriesNumberBloc, CategoriesNumberState>(
              builder: (context, state) {
                return state.when(initial: () {
                  return const SizedBox();
                }, loading: () {
                  return const DashboardContainer(
                      title: 'Categories',
                      number: '0',
                      image: AppImages.categoriesDrawer,
                      isLoading: true);
                }, success: (categoriesNumber) {
                  return DashboardContainer(
                      title: 'Categories',
                      number: categoriesNumber,
                      image: AppImages.categoriesDrawer,
                      isLoading: false);
                }, failure: (errorMessage) {
                  return Center(
                    child: TextApp(
                      text: errorMessage,
                      style: context.textStyle
                          .copyWith(color: Colors.red, fontSize: 16.sp),
                    ),
                  );
                });
              },
            ),
            verticalSpace(15),
            // Users
            BlocBuilder<UsersNumberBloc, UsersNumberState>(
              builder: (context, state) {
                return state.when(initial: () {
                  return const SizedBox();
                }, loading: () {
                  return const DashboardContainer(
                      title: 'Users',
                      number: '0',
                      image: AppImages.usersDrawer,
                      isLoading: true);
                }, success: (usersNumber) {
                  return DashboardContainer(
                      title: 'Users',
                      number: usersNumber,
                      image: AppImages.usersDrawer,
                      isLoading: false);
                }, failure: (errorMessage) {
                  return Center(
                    child: TextApp(
                      text: errorMessage,
                      style: context.textStyle
                          .copyWith(color: Colors.red, fontSize: 16.sp),
                    ),
                  );
                });
              },
            ),
            verticalSpace(15),
          ],
        ),
      ),
    );
  }
}
