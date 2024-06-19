import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/custom_gradient_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, required this.price});
  final double price;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 500,
      child: Container(
        height: 90.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: context.color.containerShadow1,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Price
              TextApp(
                text: '\$$price',
                style: context.textStyle.copyWith(
                  fontSize: 22.sp,
                  fontWeight: FontWeightHelper.medium,
                  color: context.color.bluePinkLight,
                ),
              ),

              // Add to Cart Button,
              CustomGradientButton(
                width: 140.w,
                height: 40.h,
                  child: TextApp(
                      text: 'Add To Cart',
                      
                      style: context.textStyle.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeightHelper.bold,
                      )),
                  onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
