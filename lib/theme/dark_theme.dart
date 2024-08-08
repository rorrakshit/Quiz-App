import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xff8D493A),
    onPrimary:Color.fromARGB(255, 230, 220, 218),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(fontSize: 14),
    bodyMedium: TextStyle(fontSize: 18),
    bodyLarge: TextStyle(fontSize: 22),
  ),
);
