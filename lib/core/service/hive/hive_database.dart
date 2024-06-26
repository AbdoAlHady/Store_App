import 'package:hive_flutter/hive_flutter.dart';
import 'package:store_app/features/admin/add_notification/data/models/add_notification_model.dart';
import 'package:store_app/features/customer/favourites/data/models/favourites_model.dart';

class HiveDatabase {
  HiveDatabase._();
  static final HiveDatabase _instance = HiveDatabase._();
  factory HiveDatabase() => _instance;
  // 1- Add To Bax
  Box<AddNotificationModel>? notificaionBox;
  Box<FavouritesModel>? favouritesBox;

  Future<void> hiveSetup() async {
    await Hive.initFlutter();
    // 2-Register The Adapter
    Hive.registerAdapter(AddNotificationModelAdapter());
    Hive.registerAdapter(FavouritesModelAdapter());
    // 3 -Open Box
    notificaionBox =
        await Hive.openBox<AddNotificationModel>('notification_box');
    favouritesBox = await Hive.openBox<FavouritesModel>('favourites_box');
  }

  Future<void> deleteallBoxes() async {
    await notificaionBox!.clear();
    await favouritesBox!.clear();
  }
}
