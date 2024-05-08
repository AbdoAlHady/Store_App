import 'package:get_it/get_it.dart';
import 'package:store_app/core/networking/dio_factory.dart';

import '../../features/auth/data/datasource/auth_data_source.dart';
import '../../features/auth/data/repos/auth_repo.dart';
import '../../features/auth/presentaions/bloc/auth_bloc.dart';
import '../app/app_cubit/app_cubit.dart';
import '../networking/api_service.dart';

GetIt getIt = GetIt.instance;

Future<void> setupDependancyInjection() async {
  await _initCore();
  await _initAuth();
}

Future<void> _initCore() async {
  // App Cubit
  getIt.registerFactory(() => AppCubit());

  // Api Service
  getIt.registerFactory(() => ApiService(DioFactroy.getDio()));

}

Future<void> _initAuth() async {
  // Auth Date Source
  getIt.registerLazySingleton(() => AuthDataSource(getIt<ApiService>()));
  // Auth Repo
  getIt.registerLazySingleton(() => AuthRepo(getIt<AuthDataSource>()));
  // Auth Bloc
  getIt.registerFactory(() => AuthBloc(getIt<AuthRepo>()));
}
