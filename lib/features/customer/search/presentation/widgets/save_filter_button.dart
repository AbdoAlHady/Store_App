import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_gradient_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';

class SaveFilterButton extends StatelessWidget {
  const SaveFilterButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 200,
      child: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: CustomGradientButton(
            onPressed: onPressed,
            height: 30.h,
            width: 100.w,
            child: TextApp(
                text: 'Save',
                style: context.textStyle.copyWith(fontSize: 13.sp))),
      ),
    );
  }
}
