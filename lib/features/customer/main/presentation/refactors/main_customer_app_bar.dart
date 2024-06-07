import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_gradient_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';

class MainCustomerAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MainCustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.color.mainColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomFadeInRight(
            duration: 800,
            child: TextApp(
              text: context.translator(LangKeys.chooseProducts),
              style: context.textStyle.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeightHelper.bold,
                color: context.color.textColor,
              ),
            ),
          ),
          CustomFadeInLeft(
            duration: 800,
            child: CustomGradientButton(
                child: Center(
                  child: SvgPicture.asset(AppImages.search),
                ),
                onPressed: () {}),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 70.h);
}
