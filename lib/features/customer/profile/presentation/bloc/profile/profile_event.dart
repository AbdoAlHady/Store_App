import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_event.freezed.dart';

@Freezed()
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.getUserInfo() = GetUserInfoEvent;
}