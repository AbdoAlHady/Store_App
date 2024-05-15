import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/features/admin/add_categories/data/models/update_category_request_body.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/update_category_bloc/update_category_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/update_category_bloc/update_category_event.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/update_category_bloc/update_category_state.dart';
import 'package:store_app/features/admin/add_categories/presentations/widgets/update_upload_image.dart';

import '../../../../../core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import '../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../core/common/widgets/text_app.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/styles/colors/colors_dark.dart';
import '../../../../../core/styles/fonts/font_wight_helper.dart';

class UpdateCategoryButtonSheet extends StatefulWidget {
  const UpdateCategoryButtonSheet(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.id});
  final String imageUrl;
  final String name;
  final String id;
  @override
  State<UpdateCategoryButtonSheet> createState() =>
      _UpdateCategoryButtonSheetState();
}

class _UpdateCategoryButtonSheetState extends State<UpdateCategoryButtonSheet> {
  final formKey = GlobalKey<FormState>();
  TextEditingController categoryName = TextEditingController();
  @override
  void initState() {
    categoryName.text = widget.name;
    super.initState();
  }

  @override
  void dispose() {
    categoryName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Center(
              child: TextApp(
                text: 'Update Category',
                style: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
            ),
            verticalSpace(20),

            // Add Photo
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Add Photo,
                TextApp(
                  text: 'Add a photo',
                  style: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.medium,
                  ),
                ),
              ],
            ),
            verticalSpace(10),
            // Select P,hoto,
            UpdateCategoryUploadImage(
              imageUrl: widget.imageUrl,
            ),
            verticalSpace(15),
            // Category Name,
            TextApp(
              text: 'Enter The Category Name',
              style: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
            verticalSpace(15),
            AppTextFormFiled(
              controller: categoryName,
              hintText: 'Category Name',
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Category Name is required';
                }
                return null;
              },
            ),
            verticalSpace(15),

            // Update Category Button
            BlocConsumer<UpdateCategoryBloc, UpdateCategoryState>(
              listener: (context, state) {
                state.whenOrNull(
                  success: () {
                    context.pop();
                    ShowToast.showToastSuccess(
                      context: context,
                      message: 'Category Updated Successfully',
                    );
                  },
                  failure: (message) {
                    ShowToast.showToastError(
                      context: context,
                      message: message,
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(loading: () {
                  return Container(
                    height: 50.h,
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
                      validateThenUpdate(context);
                    },
                    text: 'Update a new category',
                    textColor: ColorsDark.blueDark,
                    backgroundColor: Colors.white,
                    width: double.infinity,
                    height: 50.h,
                    lastRadius: 10,
                    threeRadius: 10,
                  );
                });
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }

  void validateThenUpdate(BuildContext context) {
    final uploadImageCubit = context.read<UploadImageCubit>();
    final bloc = context.read<UpdateCategoryBloc>();
    if (formKey.currentState!.validate() ) {
      bloc.add(
        UpdateCategoryEvent.updateCategory(
            body: UpdateCategoryRequestBody(
                id: widget.id,
                name: categoryName.text.trim(),
                image: uploadImageCubit.imageUrl.isEmpty
                    ? widget.imageUrl
                    : uploadImageCubit.imageUrl)),
      );
      
    } 
  }
}
