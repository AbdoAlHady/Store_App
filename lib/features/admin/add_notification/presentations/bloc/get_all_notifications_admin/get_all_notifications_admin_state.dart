
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/add_notification/data/models/add_notification_model.dart';
part 'get_all_notifications_admin_state.freezed.dart';

@Freezed()
class GetAllNotificationsAdminState with _$GetAllNotificationsAdminState {
  const factory GetAllNotificationsAdminState.loading() = LoadingState;
  const factory GetAllNotificationsAdminState.success(List<AddNotificationModel> notificationsList) = SuccessState;
  const factory GetAllNotificationsAdminState.empty() = EmptyState;
  const factory GetAllNotificationsAdminState.failure(String message) = FailureState;

  
}
