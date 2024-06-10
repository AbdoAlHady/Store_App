import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/customer/profile/presentation/widgets/change_language.dart';
import 'package:store_app/features/customer/profile/presentation/widgets/user_profile_info.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Profile Inf,o
            const Center(child: UserProfileInfo()),
            verticalSpace(20.h),

            // Title,
            TextApp(
              text: context.translator(LangKeys.applicationFeatures),
              style: context.textStyle.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            verticalSpace(30.h),

            // Language
            const ChangeLanguage(),

          ],
        ),
      ),
    );
  }
}
