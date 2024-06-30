import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/core/service/push_notification/firebase_cloud_messaging.dart';
import 'package:store_app/core/utils/app_string.dart';

import '../../../../../core/utils/app_values.dart';
import '../../../../customer/notifications/data/model/notification_model.dart';

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

  // Add Notification To All Users In FireStore
  Future<void> addNotificationsToAllUsers(
      {required String body,
      required String title,
      required int productId}) async {
    // Rondom Notification Id
    final notificationId = AppValues.randomStringId;
    const createdAt = '';
    // Get All Users Ids
    final usersCollections =
        FirebaseFirestore.instance.collection(AppString.usersCollection);
    var usersGet = await usersCollections.get();
    var users = usersGet.docs;
    for (var doc in users) {
      usersCollections
          .doc(doc.id)
          .collection(AppString.notificationsCollection)
          .doc(notificationId)
          .set(
            NotificationModel(
                    notificationId: notificationId,
                    title: title,
                    body: body,
                    createdAt: createdAt.convertDateFormat(),
                    isSeen: false,
                    productId: productId)
                .toJson(),
          );
    }
  }
}
