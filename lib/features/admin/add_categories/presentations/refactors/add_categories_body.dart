import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import '../bloc/get_all_admin_categories_bloc/get_all_admin_categories_event.dart';
import '../widgets/add_categories_list.dart';
import '../widgets/add_category_button.dart';

class AddCategoriesBody extends StatelessWidget {
  const AddCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          // Create Categor Buuton,
          const AddCategoryButton(),
          verticalSpace(30),

          // Categories List,
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                context.read<GetAllAdminCategoriesBloc>().add(const GetAllAdminCategoriesEvent.getAllAdminCategories(isLoading: true));
              },
              color: ColorsDark.blueLight,
              child: const CustomScrollView(
                slivers: [
                  AddCategoriesList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
