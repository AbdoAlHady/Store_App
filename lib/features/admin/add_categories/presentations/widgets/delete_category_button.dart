import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/delete_category_bloc/delete_category_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_event.dart';

import '../bloc/delete_category_bloc/delete_category_event.dart';
import '../bloc/delete_category_bloc/delete_category_state.dart';

class DeleteCategoryButton extends StatelessWidget {
  const DeleteCategoryButton({
    super.key,
    required this.categoryId,
  });
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteCategoryBloc, DeleteCategoryState>(
      listener: (context, state) {
        state.mapOrNull(
          success: (value) {
            context.read<GetAllAdminCategoriesBloc>().add(
                const GetAllAdminCategoriesEvent.getAllAdminCategories(
                    isLoading: false));
            ShowToast.showToastSuccess(
              second: 2,
                context: context,
                message: 'Your Category Deleted Successfully');
          },
          failure: (value) {
            ShowToast.showToastError(context: context, message: value.message);
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: (id) {
            if (id == categoryId) {
              return SizedBox(
                height: 15.h,
                width: 15.w,
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            }
            return const Icon(
              Icons.delete,
              color: Colors.red,
            );
          },
          orElse: () {
            return InkWell(
              onTap: () {
                context.read<DeleteCategoryBloc>().add(
                    DeleteCategoryEvent.deleteCategory(categoryId: categoryId));
              },
              child: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            );
          },
        );
      },
    );
  }
}
