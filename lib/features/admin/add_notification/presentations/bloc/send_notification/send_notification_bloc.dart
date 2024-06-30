import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/send_notification/send_notification_event.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/send_notification/send_notification_state.dart';

import '../../../data/repo/add_notification_repo.dart';

class SendNotificationBloc
    extends Bloc<SendNotificationEvent, SendNotificationState> {
  final AddNotificationRepo addNotificationRepo;
  SendNotificationBloc(this.addNotificationRepo)
      : super(const SendNotificationState.initial()) {
    on<SendNewNotificationEvent>(_sendNotification);
  }

  FutureOr<void> _sendNotification(SendNewNotificationEvent event, emit) async {
    emit(SendNotificationState.loading(index: event.index));
    final result = await addNotificationRepo.sendNotification(
        title: event.title, body: event.body, productId: event.productId);
    result.when(success: (data) {
      addNotificationRepo.addNotificationsToAllUsers(
          body: event.body, title: event.title, productId: event.productId);
      emit(const SendNotificationState.success());
    }, failure: (message) {
      emit(SendNotificationState.failure(message: message));
    });
  }
}
