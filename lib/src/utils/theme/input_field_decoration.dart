import 'package:flutter/material.dart';
import 'package:kelp/src/utils/colors.dart';
import 'package:kelp/src/utils/theme/text_theme.dart';

class KelpInputDecoration {
  KelpInputDecoration._();

  //dark mode input decoration
  static final inputDecoration = InputDecorationTheme(
    filled: true,
    hintStyle: KelpTexTheme.darkModeTextTheme.bodySmall
        ?.copyWith(color: const Color.fromARGB(255, 117, 117, 117)),
    fillColor: grey,
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}
