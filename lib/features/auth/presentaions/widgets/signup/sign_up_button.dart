import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_gradient_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/features/auth/presentaions/bloc/auth_bloc.dart';

import '../../../../../core/styles/fonts/font_wight_helper.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 600,
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.mapOrNull(
            success: (value) {
              ShowToast.showToastSuccess(
                  context: context,
                  message: context.translator(LangKeys.signUpSuccessfully));
              context.pushReplacementNamed(Routes.loginScreen);
            },
            failure: (value) {
              ShowToast.showToastError(context: context, message: value.error);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => CustomGradientButton(
              onPressed: () {},
              width: double.infinity,
              height: 50.h,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
            orElse: () => CustomGradientButton(
              onPressed: () {
                _validateThenSignUp(context);
              },
              width: double.infinity,
              height: 50.h, 
              child: TextApp(
                text: context.translator(LangKeys.signUp),
                style: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _validateThenSignUp(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final uploadImageCubit = context.read<UploadImageCubit>();
    if (!authBloc.formKey.currentState!.validate() ||
        uploadImageCubit.imageUrl.isEmpty) {
      if (uploadImageCubit.imageUrl.isEmpty) {
        ShowToast.showToastError(
            context: context,
            message: context.translator(LangKeys.validPickImage));
      } 
    }else {
        authBloc.add(AuthEvent.signUp(imageUrl: uploadImageCubit.imageUrl));
      }
  }
}
