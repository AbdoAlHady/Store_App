import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, prod }

class EnvVariables {
  EnvVariables._();
  static final EnvVariables instance = EnvVariables._();
  String _envType = '';
  String _notificationBaseUrl = '';
  String _serverKey = '';
  String _buildDeveloper = '';

  Future<void> init({required EnvTypeEnum type}) async {
    switch (type) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');

      case EnvTypeEnum.prod:
        await dotenv.load(fileName: '.env.prod');
    }
    _envType = dotenv.get('ENV_TYPE');
    _notificationBaseUrl = dotenv.get('NOTIFICATION_BASEURL');
    _serverKey = dotenv.get('SERVER_KEY');
    _buildDeveloper = dotenv.get('BUILD_DEVELOPER');
  }

  bool get depugMode => _envType == 'dev';
  String get notificationBaseUrl => _notificationBaseUrl;
  String get serverKey => _serverKey;
  String get buildDeveloper => _buildDeveloper;
}
