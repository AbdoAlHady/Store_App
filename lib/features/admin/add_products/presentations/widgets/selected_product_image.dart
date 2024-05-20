import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';

class SelectedProductImage extends StatelessWidget {
  const SelectedProductImage({
    super.key,
    required this.index,
    required this.onTap,
  });
  final int index;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UploadImageCubit>();
    return cubit.images[index].isNotEmpty
        ? Container(
            height: 90.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.9),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(cubit.images[index]),
                fit: BoxFit.fill,
              ),
            ),
          )
        : GestureDetector(
            onTap: onTap,
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
  }
}
