import 'package:flutter/material.dart';

ColorScheme appColors = ColorScheme.fromSeed(
  seedColor: const Color(0xff000000),
);

ThemeData teyaMusicTheme() {
  return ThemeData(
    canvasColor: Colors.white,
    colorScheme: appColors,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff000000),
      elevation: 0,
    ),
  );
}

bool isDarkMode(BuildContext context) {
  var brightness = MediaQuery.of(context).platformBrightness;
  return brightness == Brightness.dark;
}

const teyaWhite = Color(0xffffffff);
const teyaGrey = Color(0xff444444);
const teyaLightGrey = Color(0xffcccccc);
