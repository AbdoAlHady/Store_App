import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  const LocalNotificationService._();
  static const LocalNotificationService _instance =
      LocalNotificationService._();
  factory LocalNotificationService() => _instance;

  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  // Initialize Notification
  Future<void> init() async {
    const setting = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(
        requestAlertPermission: true,
        requestSoundPermission: true,
      ),
    );
    _flutterLocalNotificationsPlugin.initialize(setting,
        onDidReceiveNotificationResponse: onTap);
  }

  static void onTap(NotificationResponse response) {
    // Navigator
  }

  static Future<void> showSimpleNotification() async {
    const notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        'store-id',
        'store-name',
        importance: Importance.max,
        priority: Priority.high,
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );
    _flutterLocalNotificationsPlugin.show(
      0,
      'title',
      'body',
      notificationDetails,
    );
  }
}