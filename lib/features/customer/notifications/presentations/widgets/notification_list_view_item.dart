import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';
import 'package:store_app/features/customer/notifications/data/model/notification_model.dart';
import 'package:store_app/features/customer/notifications/presentations/controller/notification_controller.dart';

class NotificationListViewItem extends StatelessWidget {
  const NotificationListViewItem({super.key, required this.notificationModel});
  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 500,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: () async {
          if (notificationModel.isSeen == false) {
            await NotificationController.instance.changeNotificationSeen(
              notificationId: notificationModel.notificationId);
          }
          if (notificationModel.productId != -1) {
            context.pushNamed(Routes.productDetail,
                argumnets: notificationModel.productId);
          }
        },
        isThreeLine: true,
        leading: Container(
          width: 50.w,
          height: 50.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: notificationModel.isSeen == false
                ? context.color.bluePinkLight
                : null,
            border: Border.all(color: Colors.grey, width: 1.5),
          ),
          child: SvgPicture.asset(
            AppImages.notificationsTab,
            color:
                notificationModel.isSeen == false ? Colors.white : Colors.pink,
            height: 30.h,
          ),
        ),
        title: TextApp(
          text: notificationModel.title,
          style: context.textStyle.copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(5),
            TextApp(
              text: notificationModel.body,
              style: context.textStyle.copyWith(
                fontSize: 10.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
            verticalSpace(5),
            TextApp(
              text: notificationModel.createdAt.toString(),
              style: context.textStyle.copyWith(
                fontSize: 10.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
            verticalSpace(10),
            const Divider(color: Colors.grey, height: 1),
          ],
        ),
        trailing: GestureDetector(
          onTap: () async {
            await NotificationController.instance.deleteNotification(
              notificationId: notificationModel.notificationId);
          },
          child: const Icon(Icons.close, color: Colors.yellow)),
      ),
    );
  }
}
