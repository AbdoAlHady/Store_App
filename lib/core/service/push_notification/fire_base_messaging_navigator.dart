import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/service/push_notification/local_notification_service.dart';

class FireBaseMessagingNavigator {
  const FireBaseMessagingNavigator._();
  static const FireBaseMessagingNavigator _instance =
      FireBaseMessagingNavigator._();
  factory FireBaseMessagingNavigator() => _instance;

  // Forground Notification
  static Future<void> forgroundHandler(RemoteMessage? message) async {
    if(message!=null){
      await LocalNotificationService.showSimpleNotification(
        title: message.notification!.title!,
        body: message.notification!.body!,
        payload: message.data['productId'].toString());
    }
  }

  // Background Notification
  static Future<void> backgroundHandler(RemoteMessage? message) async {
    if (message != null) {
      _navigate(message);
    }
  }

  static void _navigate(RemoteMessage? message) {
    getIt<GlobalKey<NavigatorState>>().currentState!.context.pushNamed(
          Routes.productDetail,
          argumnets: int.parse(message!.data['productId'].toString()),
        );
  }

  // Terminated Notification
  static Future<void> termnatedHandler(RemoteMessage? message) async {
     if (message != null) {
      _navigate(message);
    }
  }
}
