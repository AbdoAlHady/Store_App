import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/widgets/add_category_item.dart';

import '../../../../../core/common/shimmer/categories_list_loading.dart';
import '../bloc/get_all_admin_categories_bloc/get_all_admin_categories_state.dart';

class AddCategoriesList extends StatelessWidget {
  const AddCategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllAdminCategoriesBloc, GetAllAdminCategoriesState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return const CategoriesListLoading();
          },
          success: (categories) {
            return SliverList.separated(
              itemBuilder: (BuildContext context, int index) {
                return AddCategoryItem(
                  name: categories[index].name!,
                  imageUrl: categories[index].image!,
                  categoryId: categories[index].id!,
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  verticalSpace(10),
              itemCount: categories.length,
            );
          },
          failure: (message) {
            return Center(
              child: Text(message),
            );
          },
          empty: () {
            return const Center(
              child: Text('No Categories Found'),
            );
          },
        );
      },
    );
  }
}
