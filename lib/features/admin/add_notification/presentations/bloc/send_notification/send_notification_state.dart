import 'package:freezed_annotation/freezed_annotation.dart';
part 'send_notification_state.freezed.dart';
@Freezed()
class SendNotificationState with _$SendNotificationState {
  const factory SendNotificationState.initial() = _Initial;
  const factory SendNotificationState.loading({required int index}) =
      LoadingState;
  const factory SendNotificationState.success() = SuccessState;
  const factory SendNotificationState.failure({required String message}) =
      FailureState;
}
