
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_notification_state.freezed.dart';
@Freezed()
class CreateNotificationState with _$CreateNotificationState {
  const factory CreateNotificationState.initial() = _Initial;
  const factory CreateNotificationState.loading() = LoadingState;
  const factory CreateNotificationState.success() = SuccessState;
  const factory CreateNotificationState.failure(String message) = FailureState;
}
