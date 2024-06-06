import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:store_app/core/common/widgets/custom_conatiner_admin.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/extensions/date_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_notification/data/models/add_notification_model.dart';

import 'edit/edit_notification_button.dart';

class AddNotificationItem extends StatelessWidget {
  const AddNotificationItem({super.key, required this.notificationModel});
  final AddNotificationModel notificationModel;
  @override
  Widget build(BuildContext context) {
    return CustomContainerGradientAdmin(
      width: double.infinity,
      height: 180.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 15.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            NotificationInfo(title: 'Title', body: notificationModel.title),
            const Spacer(),
            NotificationInfo(title: 'Body', body: notificationModel.body),
            const Spacer(),
            NotificationInfo(
                title: 'CreatedAt',
                body: notificationModel.createdAt.formattedDayMonthYear),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Delete Notification
                const Icon(Icons.delete, color: Colors.red),
                horizontalSpace(40),
                // Edit Notification
                const EditNotificationBtn(),
                horizontalSpace(40),
                // Send Notification,
                const Icon(Icons.send, color: Colors.green),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NotificationInfo extends StatelessWidget {
  const NotificationInfo({super.key, required this.title, required this.body});
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextApp(
          text: '$title :',
          style: context.textStyle.copyWith(
              fontSize: 14.sp,
              color: Colors.white,
              fontWeight: FontWeightHelper.medium),
        ),
        horizontalSpace(8),
        Flexible(
          child: TextApp(
            text: body,
            style: context.textStyle.copyWith(
                fontSize: 14.sp,
                color: ColorsDark.blueLight,
                fontWeight: FontWeightHelper.medium),
          ),
        ),
      ],
    );
  }
}
