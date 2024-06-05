import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/app/simple_bloc_observer.dart';
import 'package:store_app/core/app/env_variables.dart';
import 'package:store_app/core/helper/cahec_helper.dart';
import 'package:store_app/core/service/hive/hive_database.dart';
import 'package:store_app/firebase_options.dart';
import 'package:store_app/store_app.dart';
import 'core/di/dependancy_injection.dart';
import 'core/service/push_notification/firebase_cloud_messaging.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariables.instance.init(type: EnvTypeEnum.prod);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Initialize Notification
  if (!kIsWeb) {
    await FireBaseCloudMessaging().init();
  }

  // Initialize Shared Preferences
  await CacheHelper().init();

  // Initialize Dependency Injection
  await setupDependancyInjection();

  // Setup Bloc Observer
  Bloc.observer = AppBlocObserver();

  // Setup Hive Database
  await HiveDatabase().hiveSetup();

  // Lock screen to portrait
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(const StoreApp());
  });
}

// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
