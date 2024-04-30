import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import '../widgets/auth_title_and_descrition.dart';
import '../widgets/dark_and_language_button.dart';
import '../widgets/login/login_button.dart';
import '../widgets/login/login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Dark and Language Button,
            const DarkAndLanguageButton(),
            verticalSpace(50),

            // Title and Description,
            AuthTitleAndDescription(
              title: context.translator(LangKeys.login),
              description: context.translator(LangKeys.welcome),
            ),
            verticalSpace(30),

            // Login Form,
            const LoginForm(),
            verticalSpace(30),

            // Login Button
            const LoginButton(),
            verticalSpace(30),

            // Goto Sign up Screen,

            CustomFadeInDown(
              duration: 400,
              child: TextApp(
                text: context.translator(LangKeys.createAccount),
                style: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
