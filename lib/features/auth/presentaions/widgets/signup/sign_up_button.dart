import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_gradient_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';

import '../../../../../core/styles/fonts/font_wight_helper.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 600,
      child: CustomGradientButton(
        onPressed: () {},
        width: double.infinity,
        height: 50.h,
        child: TextApp(
          text: context.translator(LangKeys.signUp),
          style: context.textStyle.copyWith(
            fontSize: 20.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ),
    );
  }
}
