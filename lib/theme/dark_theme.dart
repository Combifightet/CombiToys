import 'package:flutter/material.dart';

import 'package:combi_toys/theme/theme.dart';

// https://www.coolors.co/2c2b2a-323130-efeeed-fcfbfa

ThemeData getDarkTheme({String accentColor='purple'}) {
  List<bool> useDarkTextOnAccent = [
    getContrastRatio(lightColor, accentColors[accentColor]![0]) <= getContrastRatio(darkColor, accentColors[accentColor]![0]),
    getContrastRatio(lightColor, accentColors[accentColor]![1]) <= getContrastRatio(darkColor, accentColors[accentColor]![1]),
    getContrastRatio(lightColor, accentColors[accentColor]![2]) <= getContrastRatio(darkColor, accentColors[accentColor]![2]),
    getContrastRatio(lightColor, accentColors[accentColor]![3]) <= getContrastRatio(darkColor, accentColors[accentColor]![3]),
  ];

  return ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,

    scaffoldBackgroundColor: darkColor,
    canvasColor: darkAccentColor,

    appBarTheme: AppBarTheme(
      foregroundColor: useDarkTextOnAccent[2]?darkColor:lightColor,
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
