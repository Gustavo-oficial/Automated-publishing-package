import 'package:flutter/material.dart';
import 'package:istic_ui_mobile/enums/button_type.dart';
import 'package:istic_ui_mobile/extensions/context_extension.dart';

class IstButton extends StatelessWidget {
  final ButtonType buttonType;
  final String? title;
  final Widget? customTitle;
  final bool isLoading;
  final VoidCallback? action;

  const IstButton({
    super.key,
    this.buttonType = ButtonType.primary,
    this.title,
    this.customTitle,
    this.isLoading = false,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = context.theme.fontStyle.bodyMedium;

    return GestureDetector(
      onTap: action,
      child: Container(
        width: 200,
        height: 50,
        color: buttonType.color,
        child: customTitle ?? Text(
          title!,
          style: textStyle
        )
      ),
    );
  }
}