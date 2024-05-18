import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_buttom.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/features/admin/add_products/presentations/widgets/create_product_bottom_sheet.dart';

import '../../../../../core/common/bootm_sheet/custom_btuttom_sheet.dart';
import '../../../../../core/styles/fonts/font_wight_helper.dart';

class AddProductButton extends StatelessWidget {
  const AddProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Title
        Text(
          'Get All Products',
          style: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.medium,
          ),
        ),

        // Add Button,
        CustomButton(
            onPressed: () {
              CustomBottomSheet.showCustomModelSheet(
                context: context,
                child: const CreateProductBottomSheet(),
              );
            },
            lastRadius: 10,
            threeRadius: 10,
            backgroundColor: ColorsDark.blueDark,
            text: 'Add',
            width: 90.w,
            height: 35.h)
      ],
    );
  }
}
