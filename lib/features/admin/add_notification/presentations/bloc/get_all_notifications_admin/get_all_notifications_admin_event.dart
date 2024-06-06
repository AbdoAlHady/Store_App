
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_all_notifications_admin_event.freezed.dart';
@Freezed()
class GetAllNotificationsAdminEvent with _$GetAllNotificationsAdminEvent {
  const factory GetAllNotificationsAdminEvent.started() = _Started;
  const factory GetAllNotificationsAdminEvent.getAllAdminNotifications({required bool isLoading}) =
      FetchAllNotificationsAdminEvent;
}
