import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringFormat on String {
  String imageProductFormat() {
    return replaceAll(RegExp(r'^\["?|"\]?|"$'), '');
  }

  String toCaptalized() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
  String convertLongString(){
    debugPrint('================================== ${split(' ')}');
    final shorsString= split(' ').sublist(0,split(' ').length-2).join(' ');
    return shorsString;
  }

  String convertDateFormat(){
    final now=DateTime.now();
    return DateFormat('d MMM, y - h:mm a').format(now);
  }
}