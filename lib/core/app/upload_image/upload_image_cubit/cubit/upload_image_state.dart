part of 'upload_image_cubit.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState.initial() = _Initial;
  const factory UploadImageState.loading() = LoadingState;
  const factory UploadImageState.sucess() = SucessState;
    const factory UploadImageState.removeImage({required String imageUrl}) = RemoveImageState;

  const factory UploadImageState.error(String message) = ErrorState;
}