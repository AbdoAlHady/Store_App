import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_categories/presentations/widgets/create_category_bottom_sheet.dart';

import '../../../../../core/common/bootm_sheet/custom_btuttom_sheet.dart';

class CreateCategoryButton extends StatelessWidget {
  const CreateCategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Text
        TextApp(
          text: 'Get All Categories',
          style: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.medium,
          ),
        ),
        // Button,
        CustomButton(
          onPressed: () {
            CustomBottomSheet.showCustomModelSheet(
                context: context, child: const CreateCategoryBottomSheet());
          },
          text: 'Add',
          backgroundColor: ColorsDark.blueDark,
          width: 90.w,
          height: 35.h,
          lastRadius: 10,
          threeRadius: 10,
        ),
      ],
    );
  }
}
