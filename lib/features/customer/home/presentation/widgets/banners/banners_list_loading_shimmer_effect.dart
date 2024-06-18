import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';

class BannersListLoadingShimmerEffect extends StatelessWidget {
  const BannersListLoadingShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            4,
            (index) {
              return ShimmerEffect(
                  width: MediaQuery.sizeOf(context).width-30.w,
                  height: 160.h,
                  borderRaduis: 20);
            },
          ),
        ),
      ),
    );
  }
}
