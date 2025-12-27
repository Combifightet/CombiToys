import 'package:flutter/material.dart';

import 'package:combi_toys/theme/theme.dart';



ThemeData getLightTheme({String accentColor='purple'}) {
  return ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,

    scaffoldBackgroundColor: lightColor,
    canvasColor: lightAccentColor,

    appBarTheme: AppBarTheme(
      foregroundColor: lightColor,
      backgroundColor: accentColors[accentColor]![2],
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 16,
        color: darkColor
      )
    ),
  );
}
