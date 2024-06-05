import 'package:flutter/material.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/admin/add_notification/presentations/widgets/add_notification_item.dart';

class NotificationsListView extends StatelessWidget {
  const NotificationsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: RefreshIndicator(
      onRefresh: () async {},
      child: CustomScrollView(
        slivers: [
          SliverList.separated(
            itemBuilder: (context, index) {
              return const AddNotificationItem();
            },
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) =>
                verticalSpace(10),
          )
        ],
      ),
    ));
  }
}
