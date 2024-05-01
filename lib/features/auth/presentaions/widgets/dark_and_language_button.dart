import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_gradient_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

import '../../../../core/app/app_cubit/app_cubit.dart';
import '../../../../core/app/app_cubit/app_state.dart';

class DarkAndLanguageButton extends StatelessWidget {
  const DarkAndLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Dark Mode Button,
        BlocBuilder<AppCubit,AppState>(
          builder: (context, state) {
            return CustomFadeInRight(
              duration: 400,
              child: CustomGradientButton(
                onPressed: cubit.changeAppThemeMode,
                child: Icon(
                  cubit.isDark
                      ? Icons.light_mode_rounded
                      : Icons.dark_mode_rounded,
                  color: Colors.white,
                ),
              ),
            );
          },
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
                color: Colors.white,
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
