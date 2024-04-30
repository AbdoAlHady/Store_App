import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';

import '../refactors/auth_custom_painter.dart';
import '../refactors/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 150.h),
        painter: AuthCustomPainter(
          gradient: LinearGradient(colors: [
            context.color.bluePinkDark!,
            context.color.bluePinkDark!,
            context.color.bluePinkDark!,
            context.color.bluePinkLight!,
          ]),
          
        ),
       
      ),
      body: const SafeArea(
        bottom: false,
        child: LoginBody()),
    );
  }
}
