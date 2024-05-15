import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_event.dart';
import 'package:store_app/features/admin/add_categories/presentations/widgets/create_category_bottom_sheet.dart';

import '../../../../../core/common/bootm_sheet/custom_btuttom_sheet.dart';
import '../../../../../core/di/dependancy_injection.dart';
import '../bloc/create_category_bloc/create_category_bloc.dart';

class AddCategoryButton extends StatelessWidget {
  const AddCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Text
        TextApp(
          text: 'Get All Categories',
          style: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.medium,
          ),
        ),
        // Button,
        CustomButton(
          onPressed: () {
            CustomBottomSheet.showCustomModelSheet(
              context: context,
              whenComplet: () {
                context.read<GetAllAdminCategoriesBloc>().add(
                    const GetAllAdminCategoriesEvent.getAllAdminCategories());
              },
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => getIt<CreateCategoryBloc>(),
                  ),
                  BlocProvider(
                    create: (context) => getIt<UploadImageCubit>(),
                  ),
                ],
                child: const CreateCategoryBottomSheet(),
              ),
            );
          },
          text: 'Add',
          backgroundColor: ColorsDark.blueDark,
          width: 90.w,
          height: 35.h,
          lastRadius: 10,
          threeRadius: 10,
        ),
      ],
    );
  }
}
