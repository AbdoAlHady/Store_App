import 'package:flutter/material.dart';
import 'package:store_app/core/common/animation/animate_do.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomFadeInDown(
      duration: 500,
      child: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(
            'https://images.pexels.com/photos/21771497/pexels-photo-21771497/free-photo-of-close-up-of-woman-in-gray-hoodie.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
      ),
    );
  }
}
