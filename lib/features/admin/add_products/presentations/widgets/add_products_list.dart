import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/empty_screen.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/get_all_admin_products_bloc/get_all_admin_products_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/get_all_admin_products_bloc/get_all_admin_products_state.dart';
import 'package:store_app/features/admin/add_products/presentations/widgets/product_admin_item.dart';
import '../../../../../core/common/shimmer/products_admin_list_loading.dart';

class AddProductsList extends StatelessWidget {
  const AddProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllAdminProductsBloc, GetAllAdminProductsState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return const ProductsAdminListLoading();
          },
          success: (products) {
            return SliverGrid.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    childAspectRatio: 165 / 250,
                  ),
                  itemBuilder: (context, index) {
                    return ProductAdminItem(
                      imageUrl: products[index].images!.first,
                      title: products[index].title!,
                      price: products[index].price!.toString(),
                      categoryName: products[index].category!.name!,
                    );
                  },
                );
          },
          empty: () {
            return const EmptyScreen();
          },
          failure: (message) {
            return Center(
              child: Text(message),
            );
          },
        );
      },
    );
  }
}
