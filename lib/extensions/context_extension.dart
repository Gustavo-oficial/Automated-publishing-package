import 'package:flutter/material.dart';

import '../theme/custom_theme.dart';

extension ContextExt on BuildContext {
  CustomTheme get theme => CustomTheme.of(this);
}