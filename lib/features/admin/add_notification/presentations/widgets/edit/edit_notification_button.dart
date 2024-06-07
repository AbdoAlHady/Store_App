import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:store_app/features/admin/add_notification/presentations/widgets/edit/edit_notification_bottom_sheet.dart';

import '../../../../../../core/common/bootm_sheet/custom_btuttom_sheet.dart';
import '../../bloc/get_all_notifications_admin/get_all_notifications_admin_bloc.dart';
import '../../bloc/get_all_notifications_admin/get_all_notifications_admin_event.dart';

class EditNotificationBtn extends StatelessWidget {
  const EditNotificationBtn({super.key, required this.notificationModel});
  final AddNotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CustomBottomSheet.showCustomModelSheet(
            context: context,
            whenComplet: () {
              context.read<GetAllNotificationsAdminBloc>().add(
                    const GetAllNotificationsAdminEvent
                        .getAllAdminNotifications(isLoading: true),
                  );
            },
            child: EditNotificationButtomSheet(
              notificationModel: notificationModel,
            ));
      },
      child: const Icon(Icons.edit, color: Colors.yellow),
    );
  }
}
