import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';

class ProductsAdminListLoading extends StatelessWidget {
  const ProductsAdminListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
        childAspectRatio: 165 / 250,
      ),
      itemBuilder: (context, index) {
        return ShimmerEffect(width: 165.w, height: 250.h);
      },
    );
  }
}
