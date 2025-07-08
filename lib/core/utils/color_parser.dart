import 'package:flutter/material.dart';

class ColorParser {
  static const Map<String, Color> _namedColors = {
    'red': Colors.red,
    'green': Colors.green,
    'blue': Colors.blue,
    'black': Colors.black,
    'white': Colors.white,
    'yellow': Colors.yellow,
    'orange': Colors.orange,
    'purple': Colors.purple,
    'pink': Colors.pink,
    'brown': Colors.brown,
    'grey': Colors.grey,
    'gray': Colors.grey,
  };

  static Color fromName(String name) {
    return _namedColors[name.toLowerCase()] ?? Colors.transparent;
  }
}
