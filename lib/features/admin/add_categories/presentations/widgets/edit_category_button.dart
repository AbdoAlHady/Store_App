import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_event.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/update_category_bloc/update_category_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/widgets/update_category_button_sheet.dart';

import '../../../../../core/common/bootm_sheet/custom_btuttom_sheet.dart';

class UpdateCategoryButton extends StatelessWidget {
  const UpdateCategoryButton({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.id,
  });
  final String imageUrl;
  final String name;
  final String id;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomBottomSheet.showCustomModelSheet(
          context: context,
          whenComplet: () {
            context.read<GetAllAdminCategoriesBloc>().add(
                  const GetAllAdminCategoriesEvent.getAllAdminCategories(
                      isLoading: false),
                );
          },
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<UpdateCategoryBloc>()),
              BlocProvider(create: (context) => getIt<UploadImageCubit>()),
            ],
            child: UpdateCategoryButtonSheet(
              imageUrl: imageUrl,
              name: name,
              id: id,
            ),
          ),
        );
      },
      child: const Icon(
        Icons.edit,
        color: Colors.blueAccent,
      ),
    );
  }
}
