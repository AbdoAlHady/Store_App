import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_conatiner_gradient_customer.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';

class CategoriesListViewItem extends StatelessWidget {
  const CategoriesListViewItem(
      {super.key, required this.image, required this.title});
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Image
        CustomConatinerGradientCustomer(
          width: 71.w,
          height: 71.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.fill,
              placeholder: (context, url) => ShimmerEffect(
                width: 71.w,
                height: 71.h,
                borderRaduis: 8,
              ),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                size: 30,
                color: Colors.red,
              ),
            ),
          ),
        ),
        verticalSpace(10),

        // Title
        SizedBox(
          height: 35.h,
          width: 71.w,
          child: TextApp(
            text: title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: context.textStyle.copyWith(
              fontSize: 12.sp,
            ),
          ),
        )
      ],
    );
  }
}
