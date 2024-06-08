import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/auth/data/models/user_model.dart';
part 'profile_state.freezed.dart';

@Freezed()
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = LoadingState;
  const factory ProfileState.success(UserModel userModel) = SuccessState;
  const factory ProfileState.error(String message) = ErrorState;
}
