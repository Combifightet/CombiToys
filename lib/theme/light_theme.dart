import 'package:flutter/material.dart';

import 'package:combi_toys/theme/theme.dart';



ThemeData getLightTheme({String accentColor='purple'}) {
  List<bool> useLightTextOnAccent = [
    4.5 <= getContrastRatio(lightColor, accentColors[accentColor]![0]),
    4.5 <= getContrastRatio(lightColor, accentColors[accentColor]![1]),
    4.5 <= getContrastRatio(lightColor, accentColors[accentColor]![2]),
    4.5 <= getContrastRatio(lightColor, accentColors[accentColor]![3]),
  ];

  return ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,

    scaffoldBackgroundColor: lightColor,
    canvasColor: lightAccentColor,

    appBarTheme: AppBarTheme(
      foregroundColor: useLightTextOnAccent[1]?lightColor:darkColor,
      backgroundColor: accentColors[accentColor]![1],
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 16,
        color: darkColor
      )
    ),
  );
}
