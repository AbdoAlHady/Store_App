import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:store_app/core/helper/cahec_helper.dart';
import 'package:store_app/core/helper/shared_prefrences_keys.dart';
import 'package:store_app/core/utils/app_string.dart';
import 'package:store_app/features/customer/notifications/data/model/notification_model.dart';

class NotificationController {
  NotificationController._();
  static NotificationController instance = NotificationController._();

  final notificationDb = FirebaseFirestore.instance
      .collection(AppString.usersCollection)
      .doc(CacheHelper().getData(key: SharedPrefKeys.userId).toString())
      .collection(AppString.notificationsCollection)
      .orderBy('created_at', descending: true);

  Stream<List<NotificationModel>> getAllNotifications() {
    return notificationDb.snapshots().map((event) =>
        event.docs.map((e) => NotificationModel.fromJson(e.data())).toList());
  }

  Future<void> changeNotificationSeen({required String notificationId}) async {
    print('===========notificationId: $notificationId');
    await FirebaseFirestore.instance
        .collection(AppString.usersCollection)
        .doc(CacheHelper().getData(key: SharedPrefKeys.userId).toString())
        .collection(AppString.notificationsCollection)
        .doc(notificationId)
        .update({'isSeen': true});
  }

  Future<void>deleteNotification({required String notificationId}) async {
    await FirebaseFirestore.instance
        .collection(AppString.usersCollection)
        .doc(CacheHelper().getData(key: SharedPrefKeys.userId).toString())
        .collection(AppString.notificationsCollection)
        .doc(notificationId)
        .delete();
  }
}
