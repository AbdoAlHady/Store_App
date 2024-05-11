import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_conatiner_admin.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/fonts/font_manager.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

class DashboardContainer extends StatelessWidget {
  const DashboardContainer(
      {super.key,
      required this.title,
      required this.number,
      required this.image,
      required this.isLoading});
  final String title;
  final String number;
  final String image;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return CustomContainerGradientAdmin(
      width: double.infinity,
      height: 130.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                TextApp(
                  text: title,
                  style: context.textStyle.copyWith(
                      fontSize: 24.sp,
                      color: Colors.white,
                      fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
                      fontWeight: FontWeightHelper.bold),
                ),
                const Spacer(),
                if (isLoading)
                  ShimmerEffect(width: 100.w, height: 30.h)
                else
                  TextApp(
                    text: number,
                    style: context.textStyle.copyWith(
                        fontSize: 24.sp,
                        color: Colors.white,
                        fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
                        fontWeight: FontWeightHelper.bold),
                  ),
                const Spacer(),
              ],
            ),
            SizedBox(
              height: 90.h,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
