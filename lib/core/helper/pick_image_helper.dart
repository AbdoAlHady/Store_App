import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:store_app/core/di/dependancy_injection.dart';

class PickImageHelper {
  factory PickImageHelper() {
    return _instance;
  }
  const PickImageHelper._();
  static const PickImageHelper _instance = PickImageHelper._();

  Future<XFile?> pickImage() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        return XFile(pickedFile.path);
      }
      return null;
    } catch (e) {
      final premissionStatus = await Permission.photos.status;
      //mean user put on dont allow button
      if (premissionStatus.isDenied) {
        // show dialog to ask user to allow permission to open gallery
        await _showAlertPermissionDialog();
      } else {
        debugPrint('Image Exeption: $e');
      }
    }
    return null;
  }

  Future<void> _showAlertPermissionDialog() {
    return showCupertinoDialog(
      context: getIt<GlobalKey<NavigatorState>>().currentState!.context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Permission Denied'),
          content: const Text('allow accress to gallery and photos'),
          actions: [
            CupertinoDialogAction(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            const CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: openAppSettings,
              child: Text('Settings'),
            ),
          ],
        );
      },
    );
  }
}
