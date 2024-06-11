import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/service/push_notification/firebase_cloud_messaging.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';

import '../../../../../core/common/widgets/text_app.dart';
import '../../../../../core/language/lang_keys.dart';

class ProfileNotificationChange extends StatelessWidget {
  const ProfileNotificationChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon,
        Icon(Icons.notifications_active,
            color: context.color.textColor, size: 30.sp),
        horizontalSpace(10),

        // Title,
        TextApp(
          text: context.translator(LangKeys.notifications),
          style: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),

        // Switch Button
        ValueListenableBuilder(
          valueListenable: FireBaseCloudMessaging().isNotivicationSubscribe,
          builder: (context, value, child) {
            return Transform.scale(
              scale: 0.75,
              child: Switch.adaptive(
                value: value,
                inactiveTrackColor: const Color(0xff262626),
                activeColor: Colors.green,
                onChanged: (value) {
                  FireBaseCloudMessaging().controllerForUserSubscribe(context);
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
