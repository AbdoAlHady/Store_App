import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_text_form_field.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/app_regex.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/features/auth/presentaions/bloc/auth_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscure = true;
  late AuthBloc _bloc;
  @override
  void initState() {
    _bloc =context.read<AuthBloc>();
    super.initState();
  }

  @override
  void dispose() {
    _bloc.emailController.dispose();
    _bloc.passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _bloc.loginFormKey,
      child: Column(
        children: [
          // Email Field,
          CustomFadeInRight(
            duration: 200,
            child: AppTextFormFiled(
              controller: _bloc.emailController,
              hintText: context.translator(LangKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailVaild(_bloc.emailController.text) || value!.isEmpty) {
                  return context.translator(LangKeys.validEmail);
                }
                return null;
              },
            ),
          ),
          verticalSpace(25.h),
          // Password Field ,
          CustomFadeInRight(
            duration: 200,
            child: AppTextFormFiled(
              controller: _bloc.passwordController,
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

          // Login Button,
          // Register Button,
        ],
      ),
    );
  }
}
