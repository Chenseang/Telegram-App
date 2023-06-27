import 'package:flutter/material.dart';

class CustomSnackBar {
  static void messeageEror({required BuildContext context, String? title}) {
    final snackBar = SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Text('Error : $title'),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
