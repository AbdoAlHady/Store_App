import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/core/utils/app_images.dart';

class NotificationListViewItem extends StatelessWidget {
  const NotificationListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: () {},
      isThreeLine: true,
      leading: Container(
        width: 50.w,
        height: 50.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 1.5),
        ),
        child: SvgPicture.asset(
          AppImages.notificationsTab,
          color: Colors.pink,
          height: 30.h,
        ),
      ),
      title: TextApp(
        text: 'Title',
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
            text: 'Body',
            style: context.textStyle.copyWith(
              fontSize: 10.sp,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
          verticalSpace(5),
          TextApp(
            text: 'Created At: 2021-09-09 12:00:00',
            style: context.textStyle.copyWith(
              fontSize: 10.sp,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
          verticalSpace(10),
          const Divider(color: Colors.grey, height: 1),

        ],
      ),
      trailing: const Icon(Icons.close, color: Colors.yellow),
    );
  }
}
