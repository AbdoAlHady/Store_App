import 'package:flutter/material.dart';
import 'package:store_app/core/helper/spacing.dart';

import 'notification_list_view_item.dart';

class NotificationsListView extends StatelessWidget {
  const NotificationsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const NotificationListViewItem();
      },
      separatorBuilder: (BuildContext context, int index) => verticalSpace(10),
    );
  }
}
