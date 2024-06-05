import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/spacing.dart';

import '../widgets/create_notification_title_and_button.dart';
import '../widgets/notifications_list_view.dart';

class AddNotificationBody extends StatelessWidget {
  const AddNotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      child: Column(
        children: [
          // Create Notification Title And Button,
          const CreateNotificationTitleAndButton(),
          verticalSpace(20),

          // Notifications,
          const NotificationsListView()
        ],
      ),
    );
  }
}


