import 'package:freezed_annotation/freezed_annotation.dart';
part 'send_notification_event.freezed.dart';
@Freezed()
class SendNotificationEvent with _$SendNotificationEvent {
  const factory SendNotificationEvent.started() = _Started;
  const factory SendNotificationEvent.sendNotification({
    required int index,
    required String title,
    required String body,
    required int productId,
  }) = SendNewNotificationEvent;
}