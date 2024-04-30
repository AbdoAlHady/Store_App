import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/features/auth/presentaions/refactors/auth_custom_painter.dart';

import '../refactors/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 100.h),
        painter: AuthCustomPainter(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkDark!,
              context.color.bluePinkDark!,
              context.color.bluePinkDark!,
              context.color.bluePinkLight!,
            ],
          ),
        ),
      ),
      body: const SafeArea(
        child: SignUpBody()),
    );
  }
}
