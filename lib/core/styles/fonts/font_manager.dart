import 'package:store_app/core/helper/cahec_helper.dart';
import 'package:store_app/core/helper/shared_prefrences_keys.dart';

class FontFamilyHelper {
  const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalizedFontFamily() {
    final currentLanguage =  CacheHelper().getData(key: SharedPrefKeys.appLanguage);
    if(currentLanguage == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
