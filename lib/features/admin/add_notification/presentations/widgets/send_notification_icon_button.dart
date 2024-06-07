import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/send_notification/send_notification_bloc.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/send_notification/send_notification_state.dart';

import '../bloc/send_notification/send_notification_event.dart';

class SendNotificationIconButton extends StatelessWidget {
  const SendNotificationIconButton({
    super.key,
    required this.notificationModel,
    required this.notificationIndex,
  });
  final AddNotificationModel notificationModel;
  final int notificationIndex;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SendNotificationBloc, SendNotificationState>(
      listener: (context, state) {
        state.mapOrNull(
          success: (value) {
            ShowToast.showToastSuccess(context: context, message: 'Notification Sent Successfully');
          },
          failure: (value) {
            ShowToast.showToastError(context: context, message: value.message);
          },
        );
      },
      builder: (context, state) {
        return state.maybeMap(loading: (index) {
          if (notificationIndex == index.index) {
            return SizedBox(
                height: 25.h,
                width: 25.h,
                child: const Center(child: CircularProgressIndicator()));
          } else {
            return const Icon(Icons.send, color: Colors.green);
          }
        }, orElse: () {
          return GestureDetector(
            onTap: () {
              context.read<SendNotificationBloc>().add(
                    SendNotificationEvent.sendNotification(
                      title: notificationModel.title,
                      body: notificationModel.body,
                      productId: notificationModel.productId,
                      index: notificationIndex,
                    ),
                  );
            },
            child: const Icon(Icons.send, color: Colors.green),
          );
        });
      },
    );
  }
}
