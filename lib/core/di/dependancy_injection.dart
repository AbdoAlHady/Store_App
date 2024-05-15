import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app/core/app/upload_image/repos/upload_image_repos.dart';
import 'package:store_app/core/networking/dio_factory.dart';
import 'package:store_app/features/admin/add_categories/data/data_source/categories_admin_data_source.dart';
import 'package:store_app/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/create_category_bloc/create_category_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/delete_category_bloc/delete_category_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import 'package:store_app/features/admin/dashboard/data/data_source/dashboard_data_source.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/products_number/products_number_bloc.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/users_number/users_number_bloc.dart';
import 'package:store_app/features/admin/dashboard/repos/dashboard_repo.dart';

import '../../features/admin/dashboard/presentations/bloc/categories_number/categories_number_bloc.dart';
import '../../features/auth/data/datasource/auth_data_source.dart';
import '../../features/auth/data/repos/auth_repo.dart';
import '../../features/auth/presentaions/bloc/auth_bloc.dart';
import '../app/app_cubit/app_cubit.dart';
import '../app/upload_image/date_source/upload_image_date_source.dart';
import '../app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import '../networking/api_service.dart';

GetIt getIt = GetIt.instance;

Future<void> setupDependancyInjection() async {
  await _initCore();
  await _initAuth();
  await _initDashboard();
  await _initAdminCategories();
}

Future<void> _initCore() async {
  final navigateKey = GlobalKey<NavigatorState>();
  // App Cubit
  getIt.registerFactory(() => AppCubit());
  // Api Service
  getIt.registerFactory(() => ApiService(DioFactroy.getDio()));
  // Navigator Key
  getIt.registerSingleton<GlobalKey<NavigatorState>>(navigateKey);

  // Upload Image Date Source
  getIt.registerLazySingleton(() => UploadImageDataSource(getIt<ApiService>()));
  // Upload Image Repo
  getIt.registerLazySingleton(
      () => UploadImageRepo(getIt<UploadImageDataSource>()));
  // Upload Image Cubit
  getIt.registerFactory(() => UploadImageCubit(getIt<UploadImageRepo>()));
}

Future<void> _initAuth() async {
  // Auth Date Source
  getIt.registerLazySingleton(() => AuthDataSource(getIt<ApiService>()));
  // Auth Repo
  getIt.registerLazySingleton(() => AuthRepo(getIt<AuthDataSource>()));
  // Auth Bloc
  getIt.registerFactory(() => AuthBloc(getIt<AuthRepo>()));
}

Future<void> _initDashboard() async {
  // Dashboard Date Source
  getIt.registerLazySingleton(() => DashBoardDataSource(getIt<ApiService>()));
  // Dashboard Repo
  getIt
      .registerLazySingleton(() => DashboardRepo(getIt<DashBoardDataSource>()));
  // Product Number Bloc
  getIt.registerFactory(() => ProductsNumberBloc(getIt<DashboardRepo>()));
  // Users Number Bloc
  getIt.registerFactory(() => UsersNumberBloc(getIt<DashboardRepo>()));
  // Categories Number Bloc
  getIt.registerFactory(() => CategoriesNumberBloc(getIt<DashboardRepo>()));
}

Future<void> _initAdminCategories() async {
  // Admin Categories Data Source
  getIt.registerLazySingleton(() => CategoriesAdminDataSource(getIt()));
  // Admin Categories Repo
  getIt.registerLazySingleton(() => CategoriesAdminRepo(getIt()));
  // Admin  Get All Categories  Bloc
  getIt.registerFactory(() => GetAllAdminCategoriesBloc(getIt()));
  // Create Category Bloc
  getIt.registerFactory(() => CreateCategoryBloc(getIt()));
  // Delete Category Bloc
  getIt.registerFactory(() => DeleteCategoryBloc(getIt()));
}
