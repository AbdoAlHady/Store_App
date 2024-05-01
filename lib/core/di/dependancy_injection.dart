import 'package:get_it/get_it.dart';

import '../app/app_cubit/app_cubit.dart';

GetIt getIt = GetIt.instance;

Future<void> setupDependancyInjection() async {
    await _initCore();
}

Future<void> _initCore() async {
// App Cubit
  getIt.registerFactory(() => AppCubit());
}
