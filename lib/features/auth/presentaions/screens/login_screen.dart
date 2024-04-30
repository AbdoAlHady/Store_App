import 'package:flutter/material.dart';
import 'package:store_app/core/extensions/context_extension.dart';

import '../refactors/auth_custom_painter.dart';
import '../refactors/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        painter: AuthCustomPainter(
          gradient: LinearGradient(colors: [
            context.color.bluePinkDark!,
            context.color.bluePinkDark!,
            context.color.bluePinkDark!,
            context.color.bluePinkLight!,
          ]),
          
        ),
        child:  SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,

        ),
      ),
      body: const SafeArea(
        bottom: false,
        child: LoginBody()),
    );
  }
}
