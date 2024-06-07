import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/create_notification/create_notification_bloc.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/get_all_notifications_admin/get_all_notifications_admin_bloc.dart';
import 'package:store_app/features/admin/add_notification/presentations/refactors/add_notification_body.dart';
import '../../../../../core/common/widgets/admin_app_bar.dart';
import '../bloc/get_all_notifications_admin/get_all_notifications_admin_event.dart';

class AddNotificationScreen extends StatelessWidget {
  const AddNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetAllNotificationsAdminBloc()
            ..add(
              const GetAllNotificationsAdminEvent.getAllAdminNotifications(
                  isLoading: true),
            ),
        ),
        BlocProvider(create: (context) => CreateNotificationBloc()),
      ],
      child: Scaffold(
        appBar: AdminAppBar(
            isMain: true,
            backgroundColor: context.color.mainColor!,
            title: 'Notification'),
        body: const AddNotificationBody(),
      ),
    );
  }
}
