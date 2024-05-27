
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/users/data/models/get_all_users_response.dart';
part 'get_all_users_state.freezed.dart';

@Freezed()
class GetAllUsersState with _$GetAllUsersState {
  const factory GetAllUsersState.loading() = LoadinState;
  const factory GetAllUsersState.success(List<GetAllUsersModel> users) =SuccessState;
  const factory GetAllUsersState.empty() = EmptyState;
  const factory GetAllUsersState.failure(String message) = FailureState;
}
