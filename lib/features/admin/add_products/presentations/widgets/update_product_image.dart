import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/extensions/string_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/helper/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';

class UpdateProductImage extends StatelessWidget {
  const UpdateProductImage({super.key, required this.images});
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          sucess: () {
            ShowToast.showToastSuccess(context: context, message: context.translator(LangKeys.imageUploaded));
          },
          error: (message) {
            ShowToast.showToastError(context: context, message: message);
          },
        );
      },
      builder: (context, state) {
        return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return state.maybeWhen(loadingList: (imageIndex) {
                if (index == imageIndex) {
                  return ShimmerEffect(
                      width: double.infinity, height: 90.h, borderRaduis: 15);
                } else {
                  return UpdateSelectedImage(
                    images: images,
                    index: index,
                    onTap: () {},
                  );
                }
              }, orElse: () {
                return UpdateSelectedImage(
                  images: images,
                  index: index,
                  onTap: () {
                    context.read<UploadImageCubit>().uploadUpdateImageList(
                        index: index, imagesList: images);
                  },
                );
              });
            },
            separatorBuilder: (context, index) {
              return verticalSpace(6);
            },
            itemCount: 3);
      },
    );
  }
}

class UpdateSelectedImage extends StatelessWidget {
  const UpdateSelectedImage({
    super.key,
    required this.images,
    required this.index,
    required this.onTap,
  });

  final List<String> images;
  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            height: 90.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.9),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    images[index].imageProductFormat(),
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
  }
}
