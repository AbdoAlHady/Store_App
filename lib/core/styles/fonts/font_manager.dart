class FontFamilyHelper {
  const FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalizedFontFamily() {
  //TODO: sharedPref
    // ignore: prefer_const_declarations
    final currentLanguage = 'ar';
    if(currentLanguage == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
