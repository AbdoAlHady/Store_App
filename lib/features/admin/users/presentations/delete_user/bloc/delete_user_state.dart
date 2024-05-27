import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_user_state.freezed.dart';
@Freezed()
class DeleteUserState with _$DeleteUserState {
  const factory DeleteUserState.initial() = _Initial;
  const factory DeleteUserState.loading({required String userId}) = LoadingState;
  const factory DeleteUserState.success() = SuccessState;
  const factory DeleteUserState.failure({required String message}) = FailureState;
}
