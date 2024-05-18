import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/spacing.dart';

class CreateProductImage extends StatelessWidget {
  const CreateProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              height: 90.h,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Icon(
                  Icons.add_a_photo_outlined,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return verticalSpace(6);
        },
        itemCount: 3);
  }
}
