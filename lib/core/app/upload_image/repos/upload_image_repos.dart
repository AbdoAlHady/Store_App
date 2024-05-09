import 'package:image_picker/image_picker.dart';
import 'package:store_app/core/app/upload_image/date_source/upload_image_date_source.dart';

import '../../../networking/api_result.dart';

class UploadImageRepo {
  final UploadImageDataSource _dataSorce;

  UploadImageRepo(this._dataSorce);


  Future<ApiResult>uploadImage(XFile imageFile)async{
    try {
      final response = await _dataSorce.uploadImage(imageFile);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure('Pleae, try again later ther is an error.');
    }
    
  }
}