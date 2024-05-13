import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateCategoryUploadImage extends StatelessWidget {
  const UpdateCategoryUploadImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15),
        image:  DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
