import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/features/admin/add_categories/presentations/widgets/update_upload_image.dart';

import '../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../core/common/widgets/text_app.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/styles/colors/colors_dark.dart';
import '../../../../../core/styles/fonts/font_wight_helper.dart';

class UpdateCategoryButton extends StatefulWidget {
  const UpdateCategoryButton({super.key});

  @override
  State<UpdateCategoryButton> createState() => _UpdateCategoryButtonState();
}

class _UpdateCategoryButtonState extends State<UpdateCategoryButton> {
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
            // Select P,hoto,
            const UpdateCategoryUploadImage(
              imageUrl: 'https://i.ytimg.com/vi/6Ij9PiehENA/maxresdefault.jpg',
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

            // Update Button
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // Add Category
                }
              },
              text: 'Update a new category',
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
