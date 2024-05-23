import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/upload_image_cubit/cubit/upload_image_cubit.dart';
import 'package:store_app/core/common/widgets/shimmer_effect.dart';
import 'package:store_app/core/extensions/context_extension.dart';
import 'package:store_app/core/helper/show_toast.dart';
import 'package:store_app/core/helper/spacing.dart';

import 'selected_product_image.dart';

class CreateProductImage extends StatelessWidget {
  const CreateProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          sucess: () => ShowToast.showToastSuccess(context: context, message: 'Product Image Uploaded Successfully.'),
          error: (message) => ShowToast.showToastError(context: context, message: context.translator(message)),
        );
      },
      builder: (context, state) {
        return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return state.maybeWhen(loadingList: (indexId) {
                if (indexId == index) {
                  return ShimmerEffect(
                    width: MediaQuery.sizeOf(context).width,
                    height: 90.h,
                    borderRaduis: 15,
                  );
                } else {
                  return SelectedProductImage(
                    index: index,
                    onTap: () {},
                  );
                }
              }, orElse: () {
                return SelectedProductImage(
                  index: index,
                  onTap: () {
                    context
                        .read<UploadImageCubit>()
                        .uploadImageList(index: index);
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
