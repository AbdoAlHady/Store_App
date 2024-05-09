import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:store_app/core/networking/api_service.dart';

import '../models/upload_image_response.dart';

class UploadImageDataSource {
  final ApiService _apiService;

  UploadImageDataSource(this._apiService);

  Future<UploadImageResponse> uploadImage(XFile imageFile) async {
    final formData = FormData();
    formData.files.add(MapEntry(
      'file',
      await MultipartFile.fromFile(imageFile.path),
    ));
    final response = await _apiService.uploadImage(formData);
    return response;
  }
}
