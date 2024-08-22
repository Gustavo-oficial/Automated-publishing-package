import 'package:flutter/material.dart';

import '../../config/theme/custom_theme.dart';

extension ContextExt on BuildContext {
  CustomTheme get theme => CustomTheme.of(this);
}