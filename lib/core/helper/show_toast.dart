import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToast {
  const ShowToast._();

  static void showToastError({required BuildContext context, required String message , int ?second}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb:second??3 ,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.sp
    );
  }

    static void showToastSuccess({required BuildContext context, required String message , int ?second}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb:second??3 ,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.sp
    );
  }
}
