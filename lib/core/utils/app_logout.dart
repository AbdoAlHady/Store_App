import 'package:flutter/material.dart';
import 'package:store_app/core/di/dependancy_injection.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/service/hive/hive_database.dart';

import '../helper/cahec_helper.dart';
import '../helper/shared_prefrences_keys.dart';
import '../service/push_notification/local_notification_service.dart';

class AppLogout {
  const AppLogout._();
  static const AppLogout _instance = AppLogout._();
  factory AppLogout() => _instance;

  Future<void> logout() async {
    final context = getIt<GlobalKey<NavigatorState>>().currentContext;
    await CacheHelper().removeData(key: SharedPrefKeys.accessToken);
    await CacheHelper().removeData(key: SharedPrefKeys.userId);
    await CacheHelper().removeData(key: SharedPrefKeys.userRole);
    if (CacheHelper().getData(key: SharedPrefKeys.userRole) == 'customer') {
      await LocalNotificationService.streamController.close();
    }
    HiveDatabase().deleteallBoxes();
    if (!context!.mounted) return;
    await context.pushNamedAndRemoveUntil(Routes.loginScreen);
  }
}
