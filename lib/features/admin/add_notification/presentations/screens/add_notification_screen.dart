import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';

import '../../../../../core/common/widgets/admin_app_bar.dart';

class AddNotificationScreen extends StatelessWidget {
  const AddNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
          isMain: true,
          backgroundColor: context.color.mainColor!,
          title: 'Notification'),
      body: const Center(
        child: Text(
          'Add Notification Screen',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
