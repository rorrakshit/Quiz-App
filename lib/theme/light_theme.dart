import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
      primary: Color(0xff8D493A),
      onPrimary: Color.fromARGB(255, 237, 223, 219)),
  textTheme: const TextTheme(
    bodySmall: TextStyle(fontSize: 14),
    bodyMedium: TextStyle(fontSize: 18),
    bodyLarge: TextStyle(fontSize: 22),
  ),
  useMaterial3: true,
);
