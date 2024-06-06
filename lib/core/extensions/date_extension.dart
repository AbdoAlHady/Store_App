import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String get formattedDayMonthYear => DateFormat.yMd().format(this);
}