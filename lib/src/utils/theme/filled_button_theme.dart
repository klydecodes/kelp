import 'package:flutter/material.dart';
import 'package:kelp/src/utils/colors.dart';

import 'package:kelp/src/utils/theme/text_theme.dart';

class KelpFilledButtonTheme {
  KelpFilledButtonTheme._();

  static final darkFilledButton = FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: const WidgetStatePropertyAll(green),
      textStyle:
          WidgetStatePropertyAll(KelpTexTheme.darkModeTextTheme.bodySmall),
      minimumSize: const WidgetStatePropertyAll(Size(110, 40)),
      maximumSize: const WidgetStatePropertyAll(Size(110, 40)),
    ),
  );
}
