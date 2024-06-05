import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/service/hive/hive_database.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/create_notification/create_notification_event.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/create_notification/create_notification_state.dart';

class CreateNotificationBloc
    extends Bloc<CreateNotificationEvent, CreateNotificationState> {
  CreateNotificationBloc() : super(const CreateNotificationState.initial()) {
    on<CreateNewNotification>(_createNotification);
  }

  FutureOr<void> _createNotification(CreateNewNotification event, emit) async {
    emit(const CreateNotificationState.loading());
    try {
      await HiveDatabase().notificaionBox!.add(event.addNotificationModel);
      emit(const CreateNotificationState.success());
    } catch (e) {
      emit(CreateNotificationState.failure(e.toString()));
    }
  }
}
