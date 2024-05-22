import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/bootm_sheet/custom_btuttom_sheet.dart';
import 'package:store_app/core/common/widgets/custom_conatiner_admin.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_products/presentations/widgets/delete_product_button.dart';
import 'package:store_app/features/admin/add_products/presentations/widgets/update_product_buttom_sheet.dart';

class ProductAdminItem extends StatelessWidget {
  const ProductAdminItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.categoryName,
      required this.price,
      required this.productId});
  final String imageUrl;
  final String title;
  final String categoryName;
  final String price;
  final String productId;

  @override
  Widget build(BuildContext context) {
    return CustomContainerGradientAdmin(
      height: 250.h,
      width: 165.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Delete Button,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: DeleteProductButton(
                  productId: productId,
                ),
              ),
              //Update Button
              IconButton(
                onPressed: () {
                  CustomBottomSheet.showCustomModelSheet(
                    context: context,
                    child: const UpdateProductButtomSheet(),
                  );
                },
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.edit,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          // Show Image
          Flexible(
            child: Center(
              child: CachedNetworkImage(
                height: 200.h,
                width: 120.w,
                fit: BoxFit.contain,
                placeholder: (context, url) => ShimmerEffect(
                  width: 120.w,
                  height: 200.h,
                ),
                imageUrl: imageUrl.imageProductFormat(),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 70,
                ),
              ),
            ),
          ),
          verticalSpace(10),
          // title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: title,
              style: context.textStyle.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeightHelper.bold,
              ),
              maxLines: 1,
            ),
          ),
          verticalSpace(5),
          // Category Name
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: categoryName,
              style: context.textStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeightHelper.medium,
              ),
              maxLines: 1,
            ),
          ),
          verticalSpace(5),
          // Price
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: '\$ $price',
              style: context.textStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
          ),
          verticalSpace(10)
        ],
      ),
    );
  }
}
