import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/create_notification/create_notification_bloc.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/create_notification/create_notification_state.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/get_all_notifications_admin/get_all_notifications_admin_bloc.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/get_all_notifications_admin/get_all_notifications_admin_event.dart';

import '../bloc/create_notification/create_notification_event.dart';

class DeleteNotificationButton extends StatelessWidget {
  const DeleteNotificationButton({
    super.key,
    required this.notificationModel,
  });
  final AddNotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateNotificationBloc, CreateNotificationState>(
      listener: (context, state) {
        state.mapOrNull(
          success: (value) {
            context.read<GetAllNotificationsAdminBloc>().add(
                  const GetAllNotificationsAdminEvent.getAllAdminNotifications(
                    isLoading: true,
                  ),
                );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(loading: () {
          return SizedBox(
            height: 15.h,
            width: 15.w,
            child: const CircularProgressIndicator(
              color: ColorsDark.blueLight,
            ),
          );
        }, orElse: () {
          return GestureDetector(
            onTap: () {
              context.read<CreateNotificationBloc>().add(
                    CreateNotificationEvent.deleteNotification(
                      notificationModel,
                    ),
                  );
            },
            child: const Icon(Icons.delete, color: Colors.red),
          );
        });
      },
    );
  }
}
