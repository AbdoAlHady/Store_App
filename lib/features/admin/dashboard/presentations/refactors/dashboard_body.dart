import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/utils/app_images.dart';
import 'package:store_app/features/admin/dashboard/presentations/widgets/dashboard_container.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          children:  [
            // Product
            const DashboardContainer(title: 'Prodcuts', number: '0', image: AppImages.productsDrawer, isLoading: false),
            verticalSpace(15),
            // Categories
            const DashboardContainer(title: 'Categories', number: '0', image: AppImages.categoriesDrawer, isLoading: false),
            verticalSpace(15),
            // Users
            const DashboardContainer(title: 'Users', number: '0', image: AppImages.usersDrawer, isLoading: false),
            verticalSpace(15),
          ],
        ),
      ),
    );
  }
}
