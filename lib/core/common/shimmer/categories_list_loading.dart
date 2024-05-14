import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';

import '../../helper/spacing.dart';

class CategoriesListLoading extends StatelessWidget {
  const CategoriesListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (BuildContext context, int index) {
        return ShimmerEffect(width: double.infinity, height: 135.h);
      },
      separatorBuilder: (BuildContext context, int index) => verticalSpace(10),
      itemCount: 10,
    );
  }
}
