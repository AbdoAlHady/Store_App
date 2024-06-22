import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/string_extension.dart';

import '../../../../../core/common/widgets/shimmer_effect.dart';

class ProductImageSliderItem extends StatelessWidget {
  const ProductImageSliderItem({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        width: double.infinity,
        imageUrl:
           image.imageProductFormat(),
        placeholder: (context, url) =>
            ShimmerEffect(width: double.infinity, height: 250.h),
        errorWidget: (context, url, error) => const Icon(
          Icons.error,
          color: Colors.red,
          size: 30,
        ),
      ),
    );
  }
}
