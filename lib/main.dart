import 'package:flutter/material.dart';
import 'package:kelp/src/routes/book_preview_screen.dart';
import 'package:kelp/src/routes/kelp_home.dart';
import 'package:kelp/src/routes/new_book_screen.dart';
import 'package:kelp/src/routes/new_book_field.dart';
import 'package:kelp/src/routes/search_screen.dart';
import 'package:kelp/src/utils/theme/custom_theme.dart';

void main() => runApp(const Kelp());

class Kelp extends StatelessWidget {
  const Kelp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: KelpTheme.darkMode,
      themeMode: ThemeMode.dark,
      title: 'Kelp an app for readers',
      home: const KelpHome(),
      debugShowCheckedModeBanner: false,
      routes: {
        'home_screen': (context) => const KelpHome(),
        'book_preview_screen': (context) => const BookPreviewScreen(),
        'search_screen': (context) => const SearchScreen(),
        'new_book_screen': (context) => const NewBookScreen(),
        'new_book_field': (context) => NewBookField(),
      },
    );
  }
}
