import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/features/customer/profile/presentation/widgets/user_profile_info.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            // User Profile Inf,o
            Center(child: UserProfileInfo()),
          ],
        ),
      ),
    );
  }
}