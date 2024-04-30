import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';

import '../../../../../core/common/animation/animate_do.dart';
import '../../../../../core/common/widgets/custom_text_form_field.dart';
import '../../../../../core/helper/app_regex.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/language/lang_keys.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Full Name Field,
          CustomFadeInRight(
            duration: 200,
            child: AppTextFormFiled(
              controller: TextEditingController(),
              hintText: context.translator(LangKeys.fullName),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 4) {
                  return context.translator(LangKeys.validName);
                }
                return null;
              },
            ),
          ),
          verticalSpace(20.h),
          // Email Field,
          CustomFadeInRight(
            duration: 200,
            child: AppTextFormFiled(
              controller: TextEditingController(),
              hintText: context.translator(LangKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (AppRegex.isEmailVaild(value!) || value.isEmpty) {
                  return context.translator(LangKeys.validEmail);
                }
                return null;
              },
            ),
          ),
          verticalSpace(20.h),

          // Password Field ,
          CustomFadeInRight(
            duration: 200,
            child: AppTextFormFiled(
              controller: TextEditingController(),
              hintText: context.translator(LangKeys.password),
              keyboardType: TextInputType.visiblePassword,
              obsecureText: isObscure,
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                    color: context.color.textColor,
                  )),
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translator(LangKeys.validPasswrod);
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
