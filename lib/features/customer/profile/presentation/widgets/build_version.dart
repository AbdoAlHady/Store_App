import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';
import 'package:store_app/core/utils/app_info.dart';

class BuildVersion extends StatelessWidget {
  const BuildVersion({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Svg Image      ,
        SvgPicture.asset(
          AppImages.buildVersion,
          color: context.color.textColor,
        ),
        horizontalSpace(10),

        // Title,
        TextApp(
          text: context.translator(LangKeys.buildVersion),
          style: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),

       // App Version
        FutureBuilder<String>(future: AppInfo.getAppVersion(context), builder: (context, snapshot) {
          if (snapshot.hasData) {
            return TextApp(
              text: snapshot.data.toString(),
              style: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.regular,
              )
            );
          } else {
            return const SizedBox();
          }
        },)
      ],
    );
  }
}