import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/common/widgets/text_app.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/cahec_helper.dart';
import 'package:store_app/core/helper/custom_dialog.dart';
import 'package:store_app/core/helper/shared_prefrences_keys.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/styles/fonts/font_manager.dart';
import 'package:store_app/core/styles/fonts/font_wight_helper.dart';
import 'package:store_app/features/admin/add_categories/presentations/screens/add_categories_screen.dart';
import 'package:store_app/features/admin/add_notification/presentations/screens/add_notification_screen.dart';
import 'package:store_app/features/admin/add_products/presentations/screens/add_products_screen.dart';
import 'package:store_app/features/admin/dashboard/presentations/screens/dashboard_screen.dart';
import 'package:store_app/features/admin/users/presentations/screens/users_screen.dart';

List<DrawerItemModel> adminDrawerList(BuildContext context) {
  return [
    // Dashboard
    DrawerItemModel(
      icon: const Icon(Icons.dashboard),
      title: TextApp(
        text: 'Dashboard',
        style: context.textStyle.copyWith(
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const DashboardScreen(),
    ),
    // Categories
    DrawerItemModel(
      icon: const Icon(
        Icons.category_outlined,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'Categories',
        style: context.textStyle.copyWith(
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddCategoriesScreen(),
    ),
    // Products
    DrawerItemModel(
      icon: const Icon(
        Icons.production_quantity_limits,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'Products',
        style: context.textStyle.copyWith(
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddProductsScreen(),
    ),
    // Users
    DrawerItemModel(
      icon: const Icon(
        Icons.people_alt_outlined,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'Users',
        style: context.textStyle.copyWith(
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const UsersScreen(),
    ),
    // Notifications
    DrawerItemModel(
      icon: const Icon(
        Icons.notifications_active,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'Notfications',
        style: context.textStyle.copyWith(
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
          fontWeight: FontWeightHelper.bold,
        ),
      ),
      page: const AddNotificationScreen(),
    ),
    DrawerItemModel(
      icon: const Icon(
        Icons.logout,
        color: Colors.white,
      ),
      title: GestureDetector(
        onTap: () {
          CustomDialog.twoButtonDialog(
              context: context,
              textBody: context.translator(LangKeys.logOutFromApp),
              textButton1: context.translator(LangKeys.yes),
              textButton2: context.translator(LangKeys.no),
              onPressed: () async {
                final navigate = Navigator.of(context);
                await CacheHelper().removeData(key: SharedPrefKeys.accessToken);
                await CacheHelper().removeData(key: SharedPrefKeys.userId);
                await CacheHelper().removeData(key: SharedPrefKeys.userRole);

                navigate.pushNamedAndRemoveUntil(
                    Routes.loginScreen, (route) => false);
              },
              isLoading: false);
        },
        child: TextApp(
          text: 'Log Out',
          style: context.textStyle.copyWith(
            fontSize: 17.sp,
            fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ),
      page: const UsersScreen(),
    ),
  ];
}

class DrawerItemModel {
  final Icon icon;
  final Widget title;
  final Widget page;

  DrawerItemModel(
      {required this.icon, required this.title, required this.page});
}
