
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/add_notification/data/models/add_notification_model.dart';
part 'create_notification_event.freezed.dart';
@Freezed()
class CreateNotificationEvent with _$CreateNotificationEvent {
  const factory CreateNotificationEvent.started() = _Started;
  const factory CreateNotificationEvent.createNewNotification(AddNotificationModel addNotificationModel)= CreateNewNotification;
  const factory CreateNotificationEvent.deleteNotification(AddNotificationModel addNotificationModel)= DeleteNotification;
}