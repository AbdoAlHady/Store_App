import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/common/widgets/empty_screen.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/get_all_notifications_admin/get_all_notifications_admin_bloc.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/get_all_notifications_admin/get_all_notifications_admin_state.dart';
import 'package:store_app/features/admin/add_notification/presentations/widgets/add_notification_item.dart';
import 'package:store_app/features/admin/add_notification/presentations/widgets/notification_loading_list_view.dart';

class NotificationsListView extends StatelessWidget {
  const NotificationsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllNotificationsAdminBloc,
        GetAllNotificationsAdminState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return const NotificationLoadingListView();
          },
          success: (notificationsList) {
            return Expanded(
                child: RefreshIndicator(
              onRefresh: () async {},
              child: CustomScrollView(
                slivers: [
                  SliverList.separated(
                    itemBuilder: (context, index) {
                      return  AddNotificationItem(notificationModel:notificationsList[index],);
                    },
                    itemCount: notificationsList.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        verticalSpace(10),
                  )
                ],
              ),
            ));
          },
          empty: () => const EmptyScreen(),
          failure: Text.new,
        );
      },
    );
  }
}
