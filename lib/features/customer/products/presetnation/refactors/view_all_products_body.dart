import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/features/customer/products/presetnation/bloc/view_all_products/view_all_products_bloc.dart';

import '../../../../../core/common/shimmer/products_list_loading_shimmer.dart';
import '../../../../../core/common/widgets/products_list_item.dart';
import '../bloc/view_all_products/view_all_products_state.dart';

class ViewAllProductsBody extends StatefulWidget {
  const ViewAllProductsBody({super.key});

  @override
  State<ViewAllProductsBody> createState() => _ViewAllProductsBodyState();
}

class _ViewAllProductsBodyState extends State<ViewAllProductsBody> {
  late final ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(
        () {
          context.read<ViewAllProductsBloc>().handlePagination(
              controller: _scrollController,
              position: MediaQuery.sizeOf(context).height * 0.15);
        },
      );
    super.initState();
  } 

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewAllProductsBloc, ViewAllProductsState>(
      builder: (context, state) {
        if (state is ViewAllProductsLoading && state.productsList.isEmpty) {
          return const ProductsListLoadingShimmer();
        } else if (state is ViewAllProductsFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    controller: _scrollController,
                    itemCount: state.productsList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //Number of cloums
                      crossAxisSpacing: 8, // Spacing between colums
                      mainAxisSpacing: 15, //Spacing between rows
                      childAspectRatio: 165 / 250,
                    ),
                    itemBuilder: (context, index) {
                      return ProductsListItem(
                        price: state.productsList[index].price ?? 0.0,
                        categoryName: state.productsList[index].category!.name ?? '',
                        title: state.productsList[index].title ?? '',
                        imageUrl: state.productsList[index].images!.first
                            .imageProductFormat(),
                        productId: int.parse(state.productsList[index].id ?? '0'),
                      );
                    },
                  ),
                ),
              ),
              if (state is ViewAllProductsLoading && state.productsList.isNotEmpty)
                const Expanded(child: ProductsListLoadingShimmer())
            ],
          );
        }
      },
    );
  }
}
