import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';

import '../../../../../core/helper/spacing.dart';

class UserInfoShimmerLoading extends StatelessWidget {
  const UserInfoShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: ShimmerEffect(width: 80.w, height: 80.h),
        ),
        verticalSpace(7),
        ShimmerEffect(width: 70.w, height: 20.h),
        verticalSpace(7),
        ShimmerEffect(width: 100.w, height: 20.h),
      ],
    );
  }
}
