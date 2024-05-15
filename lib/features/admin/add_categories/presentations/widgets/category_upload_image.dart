import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/language/lang_keys.dart';
import '../../../../../core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import '../../../../../core/common/widgets/shimmer_effect.dart';

class CategoryUploadImage extends StatelessWidget {
  const CategoryUploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.mapOrNull(
          sucess: (value) {
            ShowToast.showToastSuccess(
                context: context, message: context.translator(LangKeys.imageUploaded));
          },
          removeImage: (value) {
            ShowToast.showToastSuccess(
                context: context, message: context.translator(LangKeys.imageRemoved));
          },
          error: (value) {
            ShowToast.showToastError(
                context: context, message: value.message);
          },
        );
      },
      builder: (context, state) {
        final cubit = context.read<UploadImageCubit>();
        return state.maybeWhen(
          loading: () => ShimmerEffect(
            width: double.infinity,
            height: 120.h,
          ),
          orElse: () {
            if (cubit.imageUrl.isNotEmpty) {
              return Container(
                height: 120.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      cubit.imageUrl,
                    ),
                  ),
                ),
              );
            } else {
              return InkWell(
                onTap: () {
                  context.read<UploadImageCubit>().uploadImage();
                },
                child: Container(
                  height: 120.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
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
          },
        );
      },
    );
  }
}
