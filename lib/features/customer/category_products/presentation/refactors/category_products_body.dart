import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/empty_screen.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/features/customer/category_products/presentation/bloc/category_products/category_products_bloc.dart';
import 'package:store_app/features/customer/category_products/presentation/bloc/category_products/category_products_event.dart';
import 'package:store_app/features/customer/category_products/presentation/bloc/category_products/category_products_state.dart';

import '../../../../../core/common/shimmer/products_list_loading_shimmer.dart';
import '../../../../../core/common/widgets/products_list_item.dart';

class CategoryProductsBody extends StatelessWidget {
  const CategoryProductsBody({super.key, required this.categoryid});
  final int categoryid;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryProductsBloc, CategoryProductsState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return const ProductsListLoadingShimmer();
          },
          success: (products) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              child: RefreshIndicator(
                onRefresh: () async {
                  context.read<CategoryProductsBloc>().add(CategoryProductsEvent.getCategoryProducts(categoryid));
                },
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, //Number of cloums
                    crossAxisSpacing: 8, // Spacing between colums
                    mainAxisSpacing: 15, //Spacing between rows
                    childAspectRatio: 165 / 250,
                  ),
                  itemBuilder: (context, index) {
                    return ProductsListItem(
                      price: products[index].price ?? 0.0,
                      categoryName: products[index].category!.name ?? '',
                      title: products[index].title ?? '',
                      imageUrl:
                          products[index].images!.first.imageProductFormat(),
                      productId: int.parse(products[index].id ?? '0'),
                    );
                  },
                ),
              ),
            );
          },
          empty: EmptyScreen.new,
          failure: (error) {
            return Text(error);
          },
        );
      },
    );
  }
}
