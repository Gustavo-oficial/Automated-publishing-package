import 'package:flutter/material.dart';

class CustomFontStyle {
  const CustomFontStyle();

  final TextStyle titleLarge = const TextStyle(fontSize: 28);

  final TextStyle titleMedium = const TextStyle(fontSize: 28);

  final TextStyle titleSmall = const TextStyle(fontSize: 28);

  final TextStyle bodyLarge = const TextStyle(fontSize: 14);

  final TextStyle bodyMedium = const TextStyle(fontSize: 14);

  final TextStyle bodySmall = const TextStyle(fontSize: 14);
}

extension TextStyleExt on TextStyle {
  /// set fontSize to [fontSize]
  TextStyle size(double fontSize) => copyWith(fontSize: fontSize);

  /// set Color to [color]
  TextStyle color(Color color) => copyWith(color: color);

  /// set Font to [fontWeight]
  TextStyle weight(FontWeight fontWeight) => copyWith(fontWeight: fontWeight);
  
  /// set Font to [height]
  TextStyle space(double height) => copyWith(height: height);
}