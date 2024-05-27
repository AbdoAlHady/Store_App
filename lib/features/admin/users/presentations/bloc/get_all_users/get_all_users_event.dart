import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_all_users_event.freezed.dart';
@Freezed()
class GetAllUsersEvent with _$GetAllUsersEvent {
  const factory GetAllUsersEvent.started() = _Started;
  const factory GetAllUsersEvent.getUsersEvent({required bool isLoading}) = GetUsersEvent;
  const factory GetAllUsersEvent.searchForUser(String? searchName) = SearchForUserEvent;
}