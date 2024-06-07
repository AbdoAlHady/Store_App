import 'package:store_app/core/service/push_notification/firebase_cloud_messaging.dart';

class AddNotificationDataSource {
  // Sends a Notification Topic to the Users
  Future<void> sendNotifications(
      {required String title,
      required String body,
      required int productId}) async {
    final response = await FireBaseCloudMessaging()
        .sendTopicNotification(title: title, body: body, productId: productId);
    return response;
  }
}
