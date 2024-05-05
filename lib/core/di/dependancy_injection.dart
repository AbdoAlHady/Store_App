import 'package:get_it/get_it.dart';
import 'package:store_app/core/networking/dio_factory.dart';

import '../app/app_cubit/app_cubit.dart';
import '../networking/api_service.dart';

GetIt getIt = GetIt.instance;

Future<void> setupDependancyInjection() async {
  await _initCore();
}

Future<void> _initCore() async {
  // App Cubit
  getIt.registerFactory(() => AppCubit());

  // Api Service
  getIt.registerFactory(() => ApiService(DioFactroy.getDio()));


}
