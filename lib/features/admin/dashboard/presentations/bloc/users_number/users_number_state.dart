
import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_number_state.freezed.dart';
@Freezed()
class UsersNumberState with _$UsersNumberState {
  const factory UsersNumberState.initial() = _Initial;
  const factory UsersNumberState.loading() = LoadingState;
  const factory UsersNumberState.success(String usersNumber) = SuccessState;
  const factory UsersNumberState.failure(String errorMessage) = FailureState;

  
}
