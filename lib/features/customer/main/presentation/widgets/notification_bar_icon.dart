import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';
import 'package:badges/badges.dart' as badge;

import '../../../notifications/data/model/notification_model.dart';
import '../../../notifications/presentations/controller/notification_controller.dart';

class NotificationBarIcon extends StatelessWidget {
  const NotificationBarIcon({super.key, required this.isSelected});
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NotificationModel>>(
        stream: NotificationController.instance.getAllNotifications(),
        builder: (context, snapshot) {
          final numberOfNotifications=snapshot.data!.where((e)=>e.isSeen==false).length;
          if (!snapshot.hasData) {
            return const SizedBox.shrink();
          }

          return badge.Badge(
            showBadge: numberOfNotifications!=0,
            badgeAnimation: const badge.BadgeAnimation.scale(),
            position: badge.BadgePosition.topEnd(top: -15.h, end: -8.w),
            badgeStyle: badge.BadgeStyle(
                badgeColor: Colors.pink,
                padding: EdgeInsets.all(5.h),
                elevation: 0),
            badgeContent: TextApp(
              text:numberOfNotifications>=9? '10+':numberOfNotifications.toString(),
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
        });
  }
}
