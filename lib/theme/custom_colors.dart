import 'package:flutter/material.dart';

class CustomColors {
  final Color success;
  final Color information;
  final Color warning;
  final Color error;

  const CustomColors({
    this.success = const Color(0xFF3EC950),
    this.information = const Color(0xFF478FED),
    this.warning = const Color(0xFFFFC116),
    this.error = const Color(0xFFFF3E28)
  });
}