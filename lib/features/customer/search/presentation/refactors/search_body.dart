import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/shimmer/products_list_loading_shimmer.dart';
import 'package:store_app/core/common/widgets/empty_screen.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/customer/search/presentation/bloc/search/search_bloc.dart';
import 'package:store_app/features/customer/search/presentation/bloc/search/search_state.dart';
import '../../../../../core/common/widgets/products_list_item.dart';
import '../widgets/filter_buttons.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      child: CustomScrollView(
        slivers: [
          // Filter Buttons
          const SliverToBoxAdapter(child: FilterButtons()),
          SliverToBoxAdapter(child: verticalSpace(20)),
          SliverToBoxAdapter(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const Expanded(
                      child: ProductsListLoadingShimmer(isPaddeing: false)),
                  empty: () => const EmptyScreen(),
                  failure: Text.new,
                  success: (products) {
                    return Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                            imageUrl: products[index]
                                .images!
                                .first
                                .imageProductFormat(),
                            productId: int.parse(products[index].id!),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
