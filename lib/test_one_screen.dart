import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routes/routes.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test One Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(context.translator(LangKeys.appName)),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(Routes.testTwoScreen);
              },
              child: const Text('Go To Two Screen'),
            ),
            Image.asset(context.image.image ?? '')
          ],
        ),
      ),
    );
  }
}
