import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:store_app/core/app/upload_image/repos/upload_image_repos.dart';
import 'package:store_app/core/networking/dio_factory.dart';
import 'package:store_app/features/admin/add_categories/data/data_source/categories_admin_data_source.dart';
import 'package:store_app/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/create_category_bloc/create_category_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/delete_category_bloc/delete_category_bloc.dart';
import 'package:store_app/features/admin/add_categories/presentations/bloc/get_all_admin_categories_bloc/get_all_admin_categories_bloc.dart';
import 'package:store_app/features/admin/add_notification/data/data_source/add_notification_data_source.dart';
import 'package:store_app/features/admin/add_notification/data/repo/add_notification_repo.dart';
import 'package:store_app/features/admin/add_notification/presentations/bloc/send_notification/send_notification_bloc.dart';
import 'package:store_app/features/admin/add_products/data/data_source/product_admin_data_source.dart';
import 'package:store_app/features/admin/add_products/data/repo/prodcut_admin_repo.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/delete_product/delete_product_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/get_all_admin_products_bloc/get_all_admin_products_bloc.dart';
import 'package:store_app/features/admin/add_products/presentations/bloc/update_product/update_product_bloc.dart';
import 'package:store_app/features/admin/dashboard/data/data_source/dashboard_data_source.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/products_number/products_number_bloc.dart';
import 'package:store_app/features/admin/dashboard/presentations/bloc/users_number/users_number_bloc.dart';
import 'package:store_app/features/admin/dashboard/repos/dashboard_repo.dart';
import 'package:store_app/features/admin/users/data/data_source/users_data_source.dart';
import 'package:store_app/features/admin/users/data/repo/users_repo.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/bloc/delete_user_bloc.dart';
import 'package:store_app/features/admin/users/presentations/delete_user/get_all_users/get_all_users_bloc.dart';
import 'package:store_app/features/customer/categories/data/data_source/category_products_data_source.dart';
import 'package:store_app/features/customer/categories/data/repos/category_products_repo.dart';
import 'package:store_app/features/customer/categories/presentation/bloc/category_products/category_products_bloc.dart';
import 'package:store_app/features/customer/home/data/data_source/home_data_source.dart';
import 'package:store_app/features/customer/home/data/repos/home_repo.dart';
import 'package:store_app/features/customer/home/presentation/bloc/banners/banners_bloc.dart';
import 'package:store_app/features/customer/products/data/data_source/products_data_source.dart';
import 'package:store_app/features/customer/products/data/repos/product_repo.dart';
import 'package:store_app/features/customer/products/presetnation/bloc/product_details/product_details_bloc.dart';
import 'package:store_app/features/customer/profile/data/data_source/profile_data_source.dart';
import 'package:store_app/features/customer/profile/data/repos/profile_repos.dart';
import 'package:store_app/features/customer/profile/presentation/bloc/profile/profile_bloc.dart';
import '../../features/admin/add_categories/presentations/bloc/update_category_bloc/update_category_bloc.dart';
import '../../features/admin/add_products/presentations/bloc/create_product_bloc/create_product_bloc.dart';
import '../../features/admin/dashboard/presentations/bloc/categories_number/categories_number_bloc.dart';
import '../../features/auth/data/datasource/auth_data_source.dart';
import '../../features/auth/data/repos/auth_repo.dart';
import '../../features/auth/presentaions/bloc/auth_bloc.dart';
import '../../features/customer/home/presentation/bloc/home_catgories/home_categories_bloc.dart';
import '../../features/customer/home/presentation/bloc/home_products/home_products_bloc.dart';
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
  await _initAdminProducts();
  await _initUsers();
  await _initAdminNotifications();
  await _initProfile();
  await _initHome();
  await _initProductDetails();
  await _initCategoryProducts();
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
  // Update Category Bloc
  getIt.registerFactory(() => UpdateCategoryBloc(getIt()));
}

Future<void> _initAdminProducts() async {
  // Admin Products Data Source
  getIt.registerLazySingleton(() => ProductAdminDataSource(getIt()));
  // Admin Categories Repo
  getIt.registerLazySingleton(() => ProductAdminRepo(getIt()));
  // Admin  Get All Products  Bloc
  getIt.registerFactory(() => GetAllAdminProductsBloc(getIt()));
  // Create Product Bloc
  getIt.registerFactory(() => CreateProductBloc(getIt()));
  // Delete Product Bloc
  getIt.registerFactory(() => DeleteProductBloc(getIt()));
  // Update Product Bloc
  getIt.registerFactory(() => UpdateProductBloc(getIt()));
}

Future<void> _initUsers() async {
  // Users Data Source
  getIt.registerLazySingleton(() => UsersDataSource(getIt()));
  // Users Repo
  getIt.registerLazySingleton(() => UsersRepo(getIt()));
  // Get all Users  Bloc
  getIt.registerFactory(() => GetAllUsersBloc(getIt()));
  // Delete User Bloc
  getIt.registerFactory(() => DeleteUserBloc(getIt()));
}

Future<void> _initAdminNotifications() async {
  // Admin Notification Data Source
  getIt.registerLazySingleton(() => AddNotificationDataSource());
  // Admin Notification Repo
  getIt.registerLazySingleton(() => AddNotificationRepo(getIt()));
  // Admin Notification Bloc
  getIt.registerFactory(() => SendNotificationBloc(getIt()));
}

Future<void> _initProfile() async {
  // Profile Data Source
  getIt.registerLazySingleton(() => ProfileDataSource(getIt()));
  // Profile Repo
  getIt.registerLazySingleton(() => ProfileRepos(getIt()));
  // Profile Bloc
  getIt.registerFactory(() => ProfileBloc(getIt()));
}

Future<void> _initHome() async {
  // Home Data Source
  getIt.registerLazySingleton(() => HomeDataSource(getIt()));
  // Home Repo
  getIt.registerLazySingleton(() => HomeRepo(getIt()));
  // Banners Bloc
  getIt.registerFactory(() => BannersBloc(getIt()));
  // HomeCategories Bloc
  getIt.registerFactory(() => HomeCategoriesBloc(getIt()));
  // Home Products Bloc
  getIt.registerFactory(() => HomeProductsBloc(getIt()));
}

Future<void> _initProductDetails() async {
  // Product Details Data Source
  getIt.registerLazySingleton(() => ProductsDataSource(getIt()));
  // Product Details Repo
  getIt.registerLazySingleton(() => ProductRepo(getIt()));
  // Product Details Bloc
  getIt.registerFactory(() => ProductDetailsBloc(getIt()));
}

Future<void> _initCategoryProducts() async {
  // Category Products Source
  getIt.registerLazySingleton(() => CategoryProductsDataSource(getIt()));
  // Category Products Repo
  getIt.registerLazySingleton(() => CategoryProductsRepo(getIt()));
  // Category Products Bloc
  getIt.registerFactory(() => CategoryProductsBloc(getIt()));
}
