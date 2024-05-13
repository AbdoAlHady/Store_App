import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryUploadImage extends StatelessWidget {
  const CategoryUploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            'https://i.ytimg.com/vi/6Ij9PiehENA/maxresdefault.jpg',
          ),
        ),
      ),
    );
  }
}
