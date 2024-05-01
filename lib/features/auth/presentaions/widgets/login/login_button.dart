import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_gradient_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 600,
      child: CustomGradientButton(
          onPressed: () {},
          height: 50.h,
          width: MediaQuery.sizeOf(context).width,
          child: TextApp(
            text: context.translator(LangKeys.login),
            style: context.textStyle
                .copyWith(fontSize: 20.sp, fontWeight: FontWeightHelper.bold,color: Colors.white),
          )),
    );
  }
}
