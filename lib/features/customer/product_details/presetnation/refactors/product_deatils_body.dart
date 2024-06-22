import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/app_share_button.dart';
import 'package:store_app/core/common/widgets/custom_favourite_button.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/customer/product_details/data/models/product_details_response.dart';

import '../widgets/product_image_slider.dart';

class ProductDeatilsBody extends StatelessWidget {
  const ProductDeatilsBody({super.key, required this.productModel});
  final ProductDetailsModel productModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Share and favorite buttons 
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Share Button
                AppShareButton(size: 30),
                // Favorite Button,
                CustomFavouriteButton(size: 30),
              ],
            ),
            verticalSpace(10),
            // Product Images
             ProductImageSlider(imagesUrl: productModel.images),
            verticalSpace(30),
      
            // Product Title
            TextApp(
              text: productModel.title!,
              style: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            verticalSpace(15),
            // Description
            TextApp(
              text:
                  productModel.description!,
              style: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.regular,
                  height: 1.5,
                  color: context.color.textColor),
            ),
          verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
