import 'package:flutter/material.dart';

List<Color> purples = [
  Color(0xff6B406E), // white text
  Color(0xff8D5380), // white text
  Color(0xffC279A0), // black text
  Color(0xffDF9AAB), // black text
];

Color darkColor        = Color(0xff2c2b2a);
Color darkAccentColor  = Color(0xff302f2e);
Color lightAccentColor = Color(0xffefeeed);
Color lightColor       = Color(0xfffcfbfa);

// https://www.coolors.co/2c2b2a-323130-efeeed-fcfbfa

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,

  scaffoldBackgroundColor: lightColor,
  canvasColor: lightAccentColor,

  appBarTheme: AppBarTheme(
    foregroundColor: lightColor,
    backgroundColor: purples[1],
  ),
  textTheme: TextTheme(
    titleMedium: TextStyle(
      fontSize: 16,
      color: darkColor
    )
  ),
);