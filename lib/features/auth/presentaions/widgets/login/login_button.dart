import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_gradient_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/auth/presentaions/bloc/auth_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (userRole) {
            ShowToast.showToastSuccess(
              context: context,
              message: context.translator(LangKeys.loggedSuccessfully),
            );
            if (userRole == 'admin') {
              context.pushNamedAndRemoveUntil(
                Routes.homeAdmin,
              ); // Routes.homeAdmin
            } else {
              context.pushNamedAndRemoveUntil(
                Routes.mainScreen,
              ); // Routes.homeCustomer
            }
          },
          failure: (message) {
            ShowToast.showToastError(
              context: context,
              message: context.translator(message),
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return CustomFadeInRight(
              duration: 600,
              child: CustomGradientButton(
                onPressed: () {},
                height: 50.h,
                width: MediaQuery.sizeOf(context).width,
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            );
          },
          orElse: () => CustomFadeInRight(
            duration: 600,
            child: CustomGradientButton(
              onPressed: () {
                _validateThenLogin(context);
              },
              height: 50.h,
              width: MediaQuery.sizeOf(context).width,
              child: TextApp(
                text: context.translator(LangKeys.login),
                style: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _validateThenLogin(BuildContext context) {
    if (context.read<AuthBloc>().formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(const AuthEvent.login());
    }
  }
}
