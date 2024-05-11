import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:store_app/core/common/widgets/admin_app_bar.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/styles/colors/colors_dark.dart';
import 'package:store_app/core/utils/app_images.dart';
import 'package:store_app/features/admin/home_admin/data/models/drawer_items_model.dart';

import '../../dashboard/presentations/screens/dashboard_screen.dart';

class HomeAdminScreen extends StatefulWidget {
  const HomeAdminScreen({super.key});

  @override
  State<HomeAdminScreen> createState() => _HomeAdminScreenState();
}

class _HomeAdminScreenState extends State<HomeAdminScreen> {
  Widget page = const DashboardScreen();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Builder(
        builder: (context) {
          return MenuAdminScreen(
            onPageChange: (Widget page) {
              setState(() {
                this.page = page;
              });
              // Close Drawer
              ZoomDrawer.of(context)!.close();
            },
          );
        },
      ),
      mainScreen: page,
      borderRadius: 24.0,
      showShadow: true,
      drawerShadowsBackgroundColor: context.color.mainColor!.withOpacity(0.6),
      menuBackgroundColor: ColorsDark.blueDark,
    );
  }
}

class MenuAdminScreen extends StatelessWidget {
  const MenuAdminScreen({super.key, required this.onPageChange});
  final void Function(Widget page) onPageChange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDark.blueDark,
      appBar: AdminAppBar(
        isMain: false,
        backgroundColor: ColorsDark.blueDark,
        title: context.translator(LangKeys.appName),
      ),
      body: Column(
        children: [
          Column(
              children: adminDrawerList(context)
                  .map((menuItem) => ListTile(
                        leading: menuItem.icon,
                        title: menuItem.title,
                        onTap: () {
                          onPageChange(menuItem.page);
                        },
                      ))
                  .toList()),
          Expanded(child: Image.asset(AppImages.drawerImage)),
        ],
      ),
    );
  }
}
