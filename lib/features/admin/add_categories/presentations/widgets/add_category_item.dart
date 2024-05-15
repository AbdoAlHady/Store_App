import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_conatiner_admin.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_categories/presentations/widgets/edit_category_button.dart';
import 'delete_category_button.dart';

class AddCategoryItem extends StatelessWidget {
  const AddCategoryItem(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.categoryId});
  final String name;
  final String imageUrl;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return CustomContainerGradientAdmin(
      width: double.infinity,
      height: 135.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextApp(
                    text: name,
                    softWrap: true,
                    maxLines: 2,
                    style: context.textStyle.copyWith(
                        fontSize: 18.sp, fontWeight: FontWeightHelper.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      // Delete,
                      DeleteCategoryButton(
                        categoryId: categoryId,
                      ),
                      horizontalSpace(20),
                      // Edit,
                      UpdateCategoryButton(
                        imageUrl: imageUrl,
                        name: name,
                        id: categoryId,
                      ),
                    ],
                  )
                ],
              ),
            ),
            horizontalSpace(5),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                progressIndicatorBuilder: (context, url, progress) =>
                    ShimmerEffect(
                  width: 125.w,
                  height: 100.h,
                  borderRaduis: 10,
                ),
                imageUrl: imageUrl,
                height: 100.h,
                fit: BoxFit.fill,
                width: 125.w,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
