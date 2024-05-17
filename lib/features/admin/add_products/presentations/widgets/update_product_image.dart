import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helper/spacing.dart';

class UpdateProductImage extends StatelessWidget {
  const UpdateProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){},
            child: Stack(
              children: [
                Container(
                  height: 90.h,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1617471346061-5d329ab9c574?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        ),
                      )),
                ),
                Container(
                  height: 90.h,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Icon(
                      Icons.add_a_photo_outlined,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return verticalSpace(6);
        },
        itemCount: 3);
  }
}
