import 'package:flutter/material.dart';

const String fontFamily = 'Inter';
const Color primaryColor = Colors.black;

final lightTheme = ThemeData(
  backgroundColor: Colors.white,
  brightness: Brightness.light,
  fontFamily: fontFamily,
  primaryColor: primaryColor,
);

final darkTheme = ThemeData(
  backgroundColor: Colors.black,
  brightness: Brightness.dark,
  fontFamily: fontFamily,
  primaryColor: primaryColor,
);

final appThemes = <ThemeData>[
  lightTheme,
  darkTheme,
];
