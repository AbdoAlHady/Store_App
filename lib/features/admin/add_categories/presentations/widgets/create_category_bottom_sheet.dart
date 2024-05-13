import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_categories/presentations/widgets/category_upload_image.dart';

class CreateCategoryBottomSheet extends StatefulWidget {
  const CreateCategoryBottomSheet({super.key});

  @override
  State<CreateCategoryBottomSheet> createState() =>
      _CreateCategoryBottomSheetState();
}

class _CreateCategoryBottomSheetState extends State<CreateCategoryBottomSheet> {
  final formKey = GlobalKey<FormState>();
  TextEditingController categoryName = TextEditingController();
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
                text: 'Create Category',
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

                // Remove Photo,
                CustomButton(
                  onPressed: () {},
                  text: 'Remove',
                  width: 120.w,
                  height: 35.h,
                  lastRadius: 10,
                  threeRadius: 10,
                  backgroundColor: Colors.red,
                ),
              ],
            ),
            verticalSpace(10),
            // Select Photo
            const CategoryUploadImage(),
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

            // Create Button
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // Add Category
                }
              },
              text: 'Create a new category',
              textColor: ColorsDark.blueDark,
              backgroundColor: Colors.white,
              width: double.infinity,
              height: 50.h,
              lastRadius: 10,
              threeRadius: 10,
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
