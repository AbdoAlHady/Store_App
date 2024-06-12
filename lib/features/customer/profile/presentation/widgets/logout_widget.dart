import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/custom_dialog.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';
import 'package:store_app/core/utils/app_logout.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Svg Image      ,
        SvgPicture.asset(
          AppImages.logout,
          color: context.color.textColor,
        ),
        horizontalSpace(10),

        // Title,
        TextApp(
          text: context.translator(LangKeys.logOut),
          style: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),

        // logout,
        InkWell(
          onTap: () {
            
            // Dialog
            CustomDialog.twoButtonDialog(
                context: context,
                textBody: context.translator(LangKeys.logOutFromApp),
                textButton1: context.translator(LangKeys.sure),
                textButton2: context.translator(LangKeys.cancel),
                onPressed: () {
                  AppLogout().logout();
                },
                isLoading: false);
          },
          child: Row(
            children: [
              TextApp(
                text: context.translator(LangKeys.logOut),
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
