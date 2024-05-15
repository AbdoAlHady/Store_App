import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/language/lang_keys.dart';

class UpdateCategoryUploadImage extends StatelessWidget {
  const UpdateCategoryUploadImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          sucess: () {
            ShowToast.showToastSuccess(
                context: context,
                message: context.translator(LangKeys.imageUploaded));
          },
          error: (message) {
            ShowToast.showToastError(context: context, message: message);
          },
        );
      },
      builder: (context, state) {
        final cuubit = context.read<UploadImageCubit>();
        return state.maybeWhen(loading: () {
          return ShimmerEffect(
              width: double.infinity, height: 120.h, borderRaduis: 15);
        }, orElse: () {
          return GestureDetector(
            onTap: () {
              cuubit.uploadImage();
            },
            child: Stack(
              children: [
                Container(
                  height: 120.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        cuubit.imageUrl.isEmpty ? imageUrl : cuubit.imageUrl,
                      ),
                    ),
                  ),
                ),
                if (cuubit.imageUrl.isEmpty)
                  Container(
                    width: double.infinity,
                    height: 120.h,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add_a_photo_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
              ],
            ),
          );
        });
      },
    );
  }
}
