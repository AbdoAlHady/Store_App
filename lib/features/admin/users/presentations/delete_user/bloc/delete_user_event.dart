import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_user_event.freezed.dart';
@Freezed()
class DeleteUserEvent with _$DeleteUserEvent {
  const factory DeleteUserEvent.started() = _Started;
  const factory DeleteUserEvent.deleteUser({required String userId}) = RemoveUserEvent;
}