import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_products/home_products_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_products/home_products_state.dart';

import '../../../../../../core/common/widgets/products_list_item.dart';
import '../../../../../../core/common/shimmer/products_list_loading_shimmer.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeProductsBloc, HomeProductsState>(
      builder: (context, state) {
        return state.when(
            loading: () {
              return const ProductsListLoadingShimmer();
            },
            success: (products) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
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
                      productId: int.parse(products[index].id!),
                    );
                  },
                ),
              );
            },
            empty: () => const SizedBox.shrink(),
            failure: Text.new);
      },
    );
  }
}
