import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';

import '../../../../../core/helper/spacing.dart';

class NotificationLoadingListView extends StatelessWidget {
  const NotificationLoadingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ShimmerEffect(
            width: double.infinity,
            height: 180.h,
            borderRaduis: 20,
          );
        }, separatorBuilder: (BuildContext context, int index) => verticalSpace(10),
      ),
    );
  }
}
