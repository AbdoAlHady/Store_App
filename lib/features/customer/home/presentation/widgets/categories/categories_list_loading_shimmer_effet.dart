import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/helper/spacing.dart';

class CategoriesListLoadingShimmerEffet extends StatelessWidget {
  const CategoriesListLoadingShimmerEffet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
      child: SizedBox(
        height: 125.h,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image,
                  ShimmerEffect(width: 71.w, height: 71.h, borderRaduis: 8),
                  verticalSpace(10),
                  // Title
                  ShimmerEffect(width: 60.w, height: 18.h , borderRaduis: 0),
                ],
              );
            },
            separatorBuilder: (context, index) => horizontalSpace(15),
            itemCount: 5),
      ),
    );
  }
}
