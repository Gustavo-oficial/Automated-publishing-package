import 'package:flutter/material.dart';

import '../constants/color_constant.dart';

enum ButtonType {
  primary
}

extension ButtonTypeExtension on ButtonType {
  Color get color {
    switch (this) {
      case ButtonType.primary:
        return appColors.success;
      default:
        return Colors.transparent;
    }
  }
}