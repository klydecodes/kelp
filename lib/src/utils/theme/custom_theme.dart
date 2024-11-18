import 'package:flutter/material.dart';
import 'package:kelp/src/utils/theme/filled_button_theme.dart';
import 'package:kelp/src/utils/theme/input_field_decoration.dart';
import 'package:kelp/src/utils/theme/text_theme.dart';
// import 'package:kelp/src/utils/colors.dart';

class KelpTheme {
  KelpTheme._();

  //static dark mode
  static final darkMode = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    // appBarTheme: const AppBarTheme(color: black),
    textTheme: KelpTexTheme.darkModeTextTheme,
    inputDecorationTheme: KelpInputDecoration.inputDecoration,
    filledButtonTheme: KelpFilledButtonTheme.darkFilledButton,
  );
}
