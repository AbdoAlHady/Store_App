import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/custom_conatiner_admin.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

class AddNotificationItem extends StatelessWidget {
  const AddNotificationItem({super.key});

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
            const NotificationInfo(title: 'Title', body: 'sdaasdsadasd'),
            const Spacer(),
            const NotificationInfo(title: 'Body', body: 'sdaasdsadasd'),
            const Spacer(),
            const NotificationInfo(title: 'CreatedAt', body: '5/6/2024'),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Delete Notification
                const Icon(Icons.delete, color: Colors.red),
                horizontalSpace(40),
                // Edit Notification
                const Icon(Icons.edit, color: Colors.yellow),
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
