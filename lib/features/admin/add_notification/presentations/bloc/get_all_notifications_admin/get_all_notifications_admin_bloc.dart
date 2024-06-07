import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/service/hive/hive_database.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/get_all_notifications_admin/get_all_notifications_admin_event.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/get_all_notifications_admin/get_all_notifications_admin_state.dart';

class GetAllNotificationsAdminBloc
    extends Bloc<GetAllNotificationsAdminEvent, GetAllNotificationsAdminState> {
  GetAllNotificationsAdminBloc()
      : super(const GetAllNotificationsAdminState.loading()) {
    on<FetchAllNotificationsAdminEvent>(_getAllAdminNotifications);
  }

  FutureOr<void> _getAllAdminNotifications(
      FetchAllNotificationsAdminEvent event, emit) async {
   emit(const GetAllNotificationsAdminState.loading());
    try {
      final list = HiveDatabase().notificaionBox?.values.toList();
      if (list!.isEmpty) {
        emit(const GetAllNotificationsAdminState.empty());
      } else {
        emit(GetAllNotificationsAdminState.success(list));
      }
    } catch (e) {
      emit(GetAllNotificationsAdminState.failure(e.toString()));
    }
  }
}
