import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

class CreateNotificationBottomSheet extends StatefulWidget {
  const CreateNotificationBottomSheet({super.key});

  @override
  State<CreateNotificationBottomSheet> createState() =>
      _CreateNotificationBottomSheetState();
}

class _CreateNotificationBottomSheetState
    extends State<CreateNotificationBottomSheet> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _productIdController = TextEditingController();
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
          Center(
            child: TextApp(
              text: 'Add Notification',
              style: context.textStyle.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ),
          verticalSpace(20),
          TextApp(
            text: 'Enter The Notification Title',
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
            text: 'Enter The Notification Body',
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
            text: 'Enter The Prouduct Id',
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
                text: 'Add Notification',
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
