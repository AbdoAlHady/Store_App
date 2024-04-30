import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

class AuthTitleAndDescription extends StatelessWidget {
  const AuthTitleAndDescription(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          // Title
          TextApp(
            text: title,
            style: context.textStyle.copyWith(
                fontSize: 24.sp,
                color: context.color.textColor,
                fontWeight: FontWeightHelper.bold),
          ),
          verticalSpace(10),
          // Description,
          TextApp(
            text: description,
            textAlign: TextAlign.center,
            style: context.textStyle.copyWith(
              fontSize: 16.sp,
              color: context.color.textColor,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
        ],
      ),
    );
  }
}
