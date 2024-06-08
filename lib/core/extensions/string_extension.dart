extension StringFormat on String {
  String imageProductFormat() {
    return replaceAll(RegExp(r'^\["?|"\]?|"$'), '');
  }

  String toCaptalized() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
