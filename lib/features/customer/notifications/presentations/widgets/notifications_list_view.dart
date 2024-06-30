import 'package:flutter/material.dart';
import 'package:store_app/core/common/widgets/empty_screen.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/customer/notifications/data/model/notification_model.dart';
import 'package:store_app/features/customer/notifications/presentations/controller/notification_controller.dart';

import 'notification_list_view_item.dart';

class NotificationsListView extends StatelessWidget {
  const NotificationsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<NotificationModel>>(
        stream: NotificationController.instance.getAllNotifications(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const EmptyScreen();
          } else if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return  NotificationListViewItem(notificationModel:snapshot.data![index] ,);
              },
              separatorBuilder: (BuildContext context, int index) =>
                  verticalSpace(10),
            );
          }else{
            return const Center();
          }
        });
  }
}
