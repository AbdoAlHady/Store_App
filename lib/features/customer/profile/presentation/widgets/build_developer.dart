import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';

import '../../../../../core/app/env_variables.dart';
import '../../../../../core/common/widgets/text_app.dart';
import '../../../../../core/helper/spacing.dart';

class BuildDeveloper extends StatelessWidget {
  const BuildDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Svg Image      ,
        SvgPicture.asset(
          AppImages.buildDeveloper,
          color: context.color.textColor,
        ),
        horizontalSpace(10),

        // Title,
        TextApp(
          text: context.translator(LangKeys.buildDeveloper),
          style: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),

        InkWell(
          onTap: () {
            // Open Web View
            context.pushNamed(Routes.webView,argumnets: EnvVariables.instance.buildDeveloper);
          },
          child: Row(
            children: [
              TextApp(
                text: context.translator(LangKeys.appName),
                style: context.textStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeightHelper.regular,
                ),
              ),
              horizontalSpace(5),
              Icon(
                Icons.arrow_forward_ios,
                color: context.color.textColor,
                size: 15,
              )
            ],
          ),
        ),
      ],
    );
  }
}
