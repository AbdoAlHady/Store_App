import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

import '../../../../../core/common/widgets/text_app.dart';

class SearchNameAndPriceButton extends StatelessWidget {
  const SearchNameAndPriceButton(
      {super.key,
      required this.isSelected,
      required this.onPressed,
      required this.title});
  final bool isSelected;
  final VoidCallback onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child: Container(
        height: 40.h,
        width: 150.w,
        decoration: BoxDecoration(
          color:
              isSelected ? context.color.bluePinkDark : context.color.navBarbg,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: TextApp(
          text: title,
          style: context.textStyle.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        )),
      ),
    );
  }
}
