import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

import '../../../../../../core/helper/spacing.dart';

class EditNotificationButtomSheet extends StatefulWidget {
  const EditNotificationButtomSheet({super.key});

  @override
  State<EditNotificationButtomSheet> createState() =>
      _EditNotificationButtomSheetState();
}

class _EditNotificationButtomSheetState
    extends State<EditNotificationButtomSheet> {
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _productIdController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    _productIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Center(
            child: TextApp(
              text: 'Edit Notification',
              style: context.textStyle.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ),
          verticalSpace(20),
          TextApp(
            text: 'Edit The Notification Title',
            style: context.textStyle.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
          verticalSpace(10),
          AppTextFormFiled(
            controller: _titleController,
            hintText: 'Title',
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 2) {
                return 'Please Enter The Title';
              }
              return null;
            },
          ),
          verticalSpace(20),
          TextApp(
            text: 'Edit The Notification Body',
            style: context.textStyle.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
          verticalSpace(10),
          AppTextFormFiled(
            controller: _bodyController,
            hintText: 'Body',
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 2) {
                return 'Please Enter The Body';
              }
              return null;
            },
          ),
          verticalSpace(20),
          TextApp(
            text: 'Edit The Prouduct Id',
            style: context.textStyle.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
          verticalSpace(10),
          AppTextFormFiled(
            controller: _productIdController,
            hintText: 'Product Id',
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 2) {
                return 'Please Enter The Product Id';
              }
              return null;
            },
          ),
          verticalSpace(20),
          Center(
            child: CustomButton(
                onPressed: () {},
                text: 'Edit Notification',
                threeRadius: 10, 
                lastRadius: 10,
                width: double.infinity,
                backgroundColor:Colors.white ,
                textColor: ColorsDark.blueDark,
                height: 50.h),
          ),
        ],
      ),
    );
  }
}
