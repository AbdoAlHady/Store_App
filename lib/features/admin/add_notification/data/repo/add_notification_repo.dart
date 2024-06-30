import 'package:store_app/core/networking/api_result.dart';
import 'package:store_app/core/utils/app_string.dart';

import '../data_source/add_notification_data_source.dart';

class AddNotificationRepo {
  final AddNotificationDataSource addNotificationDataSource;

  AddNotificationRepo(this.addNotificationDataSource);

  Future<ApiResult<void>> sendNotification(
      {required String title,
      required String body,
      required int productId}) async {
    try {
      final result = await addNotificationDataSource.sendNotifications(
          title: title, body: body, productId: productId);
      return ApiResult.success(result);
    } catch (e) {
      return const ApiResult.failure(AppString.errorMessage);
    }
  }

  // Add Notification To All Users In FireStore
  Future<void> addNotificationsToAllUsers(
      {required String body,
      required String title,
      required int productId}) async {
    await addNotificationDataSource.addNotificationsToAllUsers(
        body: body, title: title, productId: productId);
  }
}
