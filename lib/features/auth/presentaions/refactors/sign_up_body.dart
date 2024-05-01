import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/features/auth/presentaions/widgets/dark_and_language_button.dart';

import '../../../../core/common/animation/animate_do.dart';
import '../../../../core/common/widgets/text_app.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/language/lang_keys.dart';
import '../../../../core/styles/fonts/font_wight_helper.dart';
import '../widgets/auth_title_and_descrition.dart';
import '../widgets/signup/sign_up_button.dart';
import '../widgets/signup/sign_up_form.dart';
import '../widgets/signup/user_avatar.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.0.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Dark and Language Button,
            const DarkAndLanguageButton(),
            verticalSpace(20),

            // Title and Description,

            AuthTitleAndDescription(
              title: context.translator(LangKeys.signUp),
              description: context.translator(LangKeys.signUpWelcome),
            ),
            verticalSpace(20),

            // User Avatar Image,
            const UserAvatar(),
            verticalSpace(20),

            // SignUp Form,
            const SignUpForm(),
            verticalSpace(20),

            // Sign Up Button
            const SignUpButton(),
            verticalSpace(15),

            // Goto Login screen
            CustomFadeInDown(
              duration: 400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(Routes.loginScreen);
                },
                child: TextApp(
                  text: context.translator(LangKeys.youHaveAccount),
                  style: context.textStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeightHelper.bold,
                      color: context.color.bluePinkLight),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
