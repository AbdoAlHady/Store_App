import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/core/app/upload_image/repos/upload_image_repos.dart';
import 'package:store_app/core/helper/pick_image_helper.dart';
part 'upload_image_state.dart';
part 'upload_image_cubit.freezed.dart';

class UploadImageCubit extends Cubit<UploadImageState> {
  UploadImageCubit(this._repo) : super(const UploadImageState.initial());
  final UploadImageRepo _repo;
  String imageUrl = '';

  // Save Image And Get Image Url
  Future<void> uploadImage() async {
    final pickedImage = await PickImageHelper().pickImage();
    if (pickedImage == null) return;
    emit(const UploadImageState.loading());
    final result = await _repo.uploadImage(pickedImage);
    result.when(success: (image) {
      imageUrl = image.location!;
      emit(const UploadImageState.sucess());
    }, failure: (message) {
      emit(UploadImageState.error(message));
    });
  }

  // Remove Image
  void removeImage() {
    imageUrl = '';
    emit(UploadImageState.removeImage(imageUrl: imageUrl));
  }
}
