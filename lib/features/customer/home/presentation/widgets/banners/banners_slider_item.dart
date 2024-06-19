import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_conatiner_admin.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/extensions/string_extension.dart';

class BannersSliderItem extends StatelessWidget {
  const BannersSliderItem({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CustomContainerGradientAdmin(
      width: double.infinity,
      height: 160.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CachedNetworkImage(
            placeholder: (context, url) => ShimmerEffect(
                width: double.infinity, height: 160.h, borderRaduis: 20),
            errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 30,
                ),
            fit: BoxFit.fill,
            imageUrl: imageUrl.imageProductFormat()),
      ),
    );
  }
}
