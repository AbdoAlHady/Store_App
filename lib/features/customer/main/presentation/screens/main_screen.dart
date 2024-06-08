import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import '../refactors/main_bottom_nav_bar.dart';
import '../refactors/main_customer_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const MainCustomerAppBar(),
      body: Container(
        constraints:const BoxConstraints.expand() ,
        decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage(context.image.homeBg!),
           fit: BoxFit.cover,
         ),
        ),
        child: const Column(
          children: [
            Expanded(child: Text( 'Main Screen')),
            MainBottomNavBar()
          ],
        ),
      ),
    );
  }
}