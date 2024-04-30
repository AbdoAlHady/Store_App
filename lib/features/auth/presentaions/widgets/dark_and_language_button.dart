import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_gradient_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

class DarkAndLanguageButton extends StatelessWidget {
  const DarkAndLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Dark Mode Button,
        CustomFadeInRight(
          duration: 400,
          child: CustomGradientButton(
              child: const Icon(Icons.light_mode_rounded), onPressed: () {}),
        ),
        // Language Button,
        CustomFadeInLeft(
          duration: 400,
          child: CustomGradientButton(
            height: 44.h,
            width: 100.w,
            child: TextApp(
              text: context.translator(LangKeys.language),
              style: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
