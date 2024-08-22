import 'package:flutter/material.dart';
import 'custom_colors.dart';
import 'custom_font_style.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final CustomFontStyle fontStyle;
  final CustomColors colors;

  const CustomTheme({
    this.colors = const CustomColors(),
    this.fontStyle = const CustomFontStyle(),
  });

  @override
  ThemeExtension<CustomTheme> copyWith({
    CustomFontStyle? fontStyle,
    CustomColors? colors,
  }) {
    return CustomTheme(
      colors: colors ?? this.colors,
      fontStyle: fontStyle ?? this.fontStyle,
    );
  }

  @override
  ThemeExtension<CustomTheme> lerp(
      covariant ThemeExtension<CustomTheme>? other, double t) {
    return this;
  }

  ThemeData buildTheme() {
    return ThemeData(
      extensions: <ThemeExtension<dynamic>>[this],
      primaryColor: colors.success,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.information,
      ),
      textTheme: TextTheme(
        titleMedium: fontStyle.titleMedium,
        bodyMedium: fontStyle.bodyMedium,
      ),
    );
  }

  factory CustomTheme.of(BuildContext context) {
    return Theme.of(context).extension<CustomTheme>() ?? const CustomTheme();
  }
}