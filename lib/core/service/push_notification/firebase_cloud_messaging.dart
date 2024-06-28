import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/app/env_variables.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/service/push_notification/fire_base_messaging_navigator.dart';

class FireBaseCloudMessaging {
  FireBaseCloudMessaging._();
  static final FireBaseCloudMessaging _instance = FireBaseCloudMessaging._();
  factory FireBaseCloudMessaging() => _instance;
  static const String subscriptionKey = 'lucky-market';
  final _firebaseMessaging = FirebaseMessaging.instance;
  bool isPremissionNotification = false;
  ValueNotifier<bool> isNotivicationSubscribe = ValueNotifier(true);

  Future<void> init() async {
    await _permissionForNotification();

    // Foreground Notification
    FirebaseMessaging.onMessage.listen(FireBaseMessagingNavigator.forgroundHandler);

    // Terminated Notification
    await FirebaseMessaging.instance.getInitialMessage().then(FireBaseMessagingNavigator.termnatedHandler);

    // Background Notification
    FirebaseMessaging.onMessageOpenedApp.listen(FireBaseMessagingNavigator.backgroundHandler);
  }

  /// Permission To Notification
  Future<void> _permissionForNotification() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      badge: false,
    );
    // if user acceepted permission
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await _subscribeNotification();
      isPremissionNotification = true;
      isNotivicationSubscribe.value = true;
      debugPrint('=== 🔔 User Accept The Notification Permission  🔔 ===');
    } else {
      // if user denied permission
      isPremissionNotification = false;
      isNotivicationSubscribe.value = false;
      debugPrint('=== 🔔 User Denied The Notification Permission  🔔 ===');
    }
  }

  /// Controller fo the Notification if subscribe or not
  Future<void> controllerForUserSubscribe(BuildContext context) async {
    if (isPremissionNotification == false) {
      await _permissionForNotification();
    } else {
      if (isNotivicationSubscribe.value == false) {
        await _subscribeNotification();
        if (!context.mounted) return;
        ShowToast.showToastSuccess(
            context: context,
            message: context.translator(
              LangKeys.subscribeToNotification,
            ));
      } else {
        await _unSubscribeNotification();
        if (!context.mounted) return;
        ShowToast.showToastSuccess(
            context: context,
            message: context.translator(LangKeys.unSubscribeToNotification));
      }
    }
  }

  /// Subscribe Notification
  Future<void> _subscribeNotification() async {
    isNotivicationSubscribe.value = true;
    await FirebaseMessaging.instance.subscribeToTopic(subscriptionKey);
    debugPrint('=== 🔔 Subscribed to $subscriptionKey 🔔 ===');
  }

  /// Unsubscribe Notification
  Future<void> _unSubscribeNotification() async {
    isNotivicationSubscribe.value = false;
    await FirebaseMessaging.instance.unsubscribeFromTopic(subscriptionKey);
    debugPrint('=== 🔔 Unsubscribed from $subscriptionKey 🔔 ===');
  }

  //! Send Topic Notification With Api
  Future<void> sendTopicNotification(
      {required String title,
      required String body,
      required int productId}) async {
    try {
      final response =
          await Dio().post(EnvVariables.instance.notificationBaseUrl,
              options: Options(
                headers: {
                  "Content-Type": "application/json",
                  "Authorization": "key=${EnvVariables.instance.serverKey}"
                },
                contentType: Headers.jsonContentType,
                responseType: ResponseType.json,
                validateStatus: (_) => true,
              ),
              data: {
            "to": "/topics/$subscriptionKey",
            "notification": {
              "title": title,
              "body": body,
            },
            "data": {
              "productId": productId,
            }
          });
      debugPrint('=== Notification Created Response: ${response.data} ===');
    } catch (e) {
      debugPrint('=== Notification Created Error: $e ===');
    }
  }
}
