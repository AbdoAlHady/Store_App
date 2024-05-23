import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/get_all_admin_products_bloc/get_all_admin_products_event.dart';
import 'package:store_app/features/admin/add_products/presentations/widgets/add_products_list.dart';

import '../bloc/get_all_admin_products_bloc/get_all_admin_products_bloc.dart';
import '../widgets/add_product_button.dart';

class AddProductScreenBody extends StatelessWidget {
  const AddProductScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          const AddProductButton(),
          verticalSpace(30),
          Expanded(
              child: RefreshIndicator(
            onRefresh: () async {
              context
                  .read<GetAllAdminProductsBloc>()
                  .add(const GetAllAdminProductsEvent.getAdminProducts(isLoading: true));
            },
            child:  CustomScrollView(
              slivers: [
                const AddProductsList(),
                 SliverToBoxAdapter(
                  child: verticalSpace(30),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
