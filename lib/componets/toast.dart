import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

toastInfo({
  required String message,
  Color bgColor = Colors.black,
  Color textColor = Colors.white,
}) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: bgColor,
    textColor: textColor,
    fontSize: 16,
  );
}
