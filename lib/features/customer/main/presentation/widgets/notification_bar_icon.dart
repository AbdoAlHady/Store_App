import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';
import 'package:badges/badges.dart' as badge;

class NotificationBarIcon extends StatelessWidget {
  const NotificationBarIcon({super.key, required this.isSelected});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return badge.Badge(
      showBadge: true,
      badgeAnimation: const badge.BadgeAnimation.scale(),
      position: badge.BadgePosition.topEnd(top: -15.h, end: -8.w),
      badgeStyle:  badge.BadgeStyle(
        badgeColor: Colors.pink,
        padding: EdgeInsets.all(5.h),
        elevation: 0
      ),
      badgeContent: TextApp(
        text: '9',
        style: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 11.sp,
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      child: SvgPicture.asset(
        AppImages.notificationsTab,
        color: isSelected ? context.color.navBarSelectedTab : Colors.grey,
        height: 25.h,
      ).animate(target: (isSelected ? 1.0 : 0.0)).scaleXY(end: 1.2),
    );
  }
}
