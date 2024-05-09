import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/common/animation/animate_do.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/utils/app_images.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: BlocConsumer<UploadImageCubit, UploadImageState>(
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
            removeImage: (imageUrl) {
              ShowToast.showToastSuccess(
                  context: context,message: context.translator(LangKeys.imageRemoved));
            },
          );
        },
        builder: (context, state) {
          final isImageUploaded =
              context.read<UploadImageCubit>().imageUrl.isNotEmpty;

          return state.maybeWhen(
            loading: () {
              return CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black.withOpacity(0.2),
                backgroundImage:
                    const AssetImage(AppImages.userAvatar) as ImageProvider,
                child: CircularProgressIndicator(
                  color: context.color.mainColor,
                ),
              );
            },
            orElse: () {
              return CircleAvatar(
                radius: 40,
                backgroundImage: isImageUploaded
                    ? NetworkImage(context.read<UploadImageCubit>().imageUrl)
                    : const AssetImage(AppImages.userAvatar) as ImageProvider,
                backgroundColor: Colors.grey.withOpacity(0.1),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 100.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isImageUploaded
                            ? Colors.transparent
                            : Colors.black.withOpacity(0.4),
                      ),
                    ),

                    // Delete image,
                    if (isImageUploaded)
                      Positioned(
                        bottom: -12,
                        right: -15,
                        child: IconButton(
                          onPressed: () {
                            context.read<UploadImageCubit>().removeImage();
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      ),

                    // Pick image from gallery,
                    if (!isImageUploaded)
                      IconButton(
                        onPressed: () {
                          context.read<UploadImageCubit>().uploadImage();
                        },
                        icon: const Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                        ),
                      ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
