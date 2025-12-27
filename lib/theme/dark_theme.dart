import 'package:flutter/material.dart';

import 'package:combi_toys/theme/theme.dart';

// https://www.coolors.co/2c2b2a-323130-efeeed-fcfbfa

ThemeData getDarkTheme({String accentColor='purple'}) {
  return ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,

    scaffoldBackgroundColor: darkColor,
    canvasColor: darkAccentColor,

    appBarTheme: AppBarTheme(
      foregroundColor: darkColor,
      backgroundColor: accentColors[accentColor]![2],
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 16,
        color: lightColor,
      ),
    ),
  );
}
