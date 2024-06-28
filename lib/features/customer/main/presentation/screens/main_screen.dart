import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/routes/routes.dart';
import 'package:store_app/core/service/push_notification/local_notification_service.dart';
import '../refactors/main_body.dart';
import '../refactors/main_bottom_nav_bar.dart';
import '../refactors/main_customer_app_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  void listenToNotification() async {
    LocalNotificationService.streamController.stream.listen((event) {
      context.pushNamed(Routes.productDetail, argumnets:int.parse(event.payload.toString()) );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainCustomerAppBar(),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(context.image.homeBg!),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          children: [Expanded(child: MainBody()), MainBottomNavBar()],
        ),
      ),
    );
  }
}
