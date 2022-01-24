import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    ColorScheme colorScheme = const ColorScheme(
      brightness: Brightness.dark,
      primary: Color.fromRGBO(92, 7, 106, 1.0),
      secondary: Color.fromRGBO(74, 7, 80, 1.0),
      secondaryVariant: Color.fromRGBO(185, 61, 25, 1),
      background: Color.fromRGBO(0, 0, 0, 0.5),
      onSurface: Color.fromRGBO(255, 0, 0, 1.0),
      onPrimary: Color.fromRGBO(153, 153, 153, 1.0),
      surface: Color.fromRGBO(67, 6, 88, 1.0),
      primaryVariant: Color.fromRGBO(205, 0, 0, 1.0),
      error: Color.fromRGBO(224, 168, 70, 1.0),
      onError: Color.fromRGBO(61, 10, 76, 1.0),
      onSecondary: Color.fromRGBO(20, 109, 88, 1.0),
      onBackground: Color.fromRGBO(210, 2, 2, 1.0),
    );

    var t = ThemeData.from(colorScheme: colorScheme);

    return t;
  }


}