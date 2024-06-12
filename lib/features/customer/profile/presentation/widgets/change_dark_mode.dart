import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';

class ChangeDarkMode extends StatelessWidget {
  const ChangeDarkMode({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Row(
      children: [
        // Icon
        SvgPicture.asset(
          AppImages.darkMode,
          color: context.color.textColor,
        ),
        horizontalSpace(10),

        // Title,
        TextApp(
          text: context.translator(LangKeys.darkMode),
          style: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),

        // Switch Button ,
        Transform.scale(
          scale: 0.75,
          child: Switch.adaptive(
            value: cubit.isDark,
            inactiveTrackColor: const Color(0xff262626),
            activeColor: Colors.green,
            onChanged: (value) {
              cubit.changeAppThemeMode();
            },
          ), 
        )
      ],
    );
  }
}
