import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_number_event.freezed.dart';
@Freezed()
class UsersNumberEvent with _$UsersNumberEvent {
  const factory UsersNumberEvent.started() = _Started;
  const factory UsersNumberEvent.getUsersNumber() = GetUsersNumber;
}
