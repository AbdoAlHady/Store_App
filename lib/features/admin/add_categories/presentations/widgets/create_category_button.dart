import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/create_category_bloc/create_category_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/create_category_bloc/create_category_state.dart';
import '../../../../../core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import '../../../../../core/common/widgets/custom_buttom.dart';
import '../../../../../core/styles/colors/colors_dark.dart';
import '../../data/models/create_category_request_body.dart';
import '../bloc/create_category_bloc/create_category_event.dart';

class CreateCategoryButton extends StatelessWidget {
  const CreateCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateCategoryBloc, CreateCategoryState>(
      listener: (context, state) {
        state.mapOrNull(
          success: (value) {
            context.pop();
            ShowToast.showToastSuccess(
                context: context,
                second: 2,
                message:
                    '${context.read<CreateCategoryBloc>().categoryName.text} Created Successfully');
          },
          failure: (value) {
            ShowToast.showToastError(context: context, message: value.message);
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(loading: () {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            height: 60.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: CircularProgressIndicator(
                color: ColorsDark.blueDark,
              ),
            ),
          );
        }, orElse: () {
          return CustomButton(
            onPressed: () {
              validateThenCreateCategory(context);
            },
            text: 'Create a new category',
            textColor: ColorsDark.blueDark,
            backgroundColor: Colors.white,
            width: double.infinity,
            height: 50.h,
            lastRadius: 10,
            threeRadius: 10,
          );
        });
      },
    );
  }

  void validateThenCreateCategory(BuildContext context) {
    final bloc = context.read<CreateCategoryBloc>();
    final uploadImageCubit = context.read<UploadImageCubit>();
    if (!bloc.formKey.currentState!.validate() ||
        uploadImageCubit.imageUrl.isEmpty) {
      if (uploadImageCubit.imageUrl.isEmpty) {
        ShowToast.showToastError(
            context: context,
            message: context.translator(LangKeys.validPickImage));
      } 
    }else {
        bloc.add(
          CreateCategoryEvent.createCategory(
            body: CreateCategoryRequestBody(
              name: bloc.categoryName.text.trim(),
              image: uploadImageCubit.imageUrl,
            ),
          ),
        );
      }
  }
}
