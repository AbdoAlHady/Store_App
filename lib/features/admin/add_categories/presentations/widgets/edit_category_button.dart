import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/update_category_bloc/update_category_bloc.dart';

import '../../../../../core/common/bootm_sheet/custom_btuttom_sheet.dart';

class UpdateCategoryButton extends StatelessWidget {
  const UpdateCategoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<UpdateCategoryBloc>()),
        BlocProvider(create: (context) => getIt<UploadImageCubit>()),
      ],
      child: InkWell(
        onTap: () {
          CustomBottomSheet.showCustomModelSheet(
              context: context, child: const UpdateCategoryButton());
        },
        child: const Icon(
          Icons.edit,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
