import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/empty_screen.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_catgories/home_categories_bloc.dart';
import 'package:store_app/features/customer/home/presentation/bloc/home_catgories/home_categories_state.dart';
import 'package:store_app/features/customer/home/presentation/widgets/categories/categories_list_loading_shimmer_effet.dart';

import 'categories_list_view_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCategoriesBloc, HomeCategoriesState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return const CategoriesListLoadingShimmerEffet();
          },
          success: (categories) {
            return Padding(
              padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
              child: SizedBox(
                height: 125.h,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CategoriesListViewItem(
                          image: categories.categoryList[index].image!,
                          title: categories.categoryList[index].name!, id: int.parse(categories.categoryList[index].id!),
                        ),
                    separatorBuilder: (context, index) => horizontalSpace(15),
                    itemCount: 5),
              ),
            );
          },
          empty: () => const EmptyScreen(),
          failure:Text.new,
        );
      },
    );
  }
}
