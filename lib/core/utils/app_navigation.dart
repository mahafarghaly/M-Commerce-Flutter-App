import 'package:flutter/material.dart';
class AppNavigation{
  static void navigationTo( BuildContext context ,Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  static void navigationAndReplaceTo( BuildContext context ,Widget widget) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>  widget),
    );
  }

}