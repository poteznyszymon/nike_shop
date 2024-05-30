import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  ThemeData customThemeData = ThemeData(
    fontFamily: GoogleFonts.raleway().fontFamily,
    colorScheme: const ColorScheme.light(
      background: Color.fromRGBO(13, 110, 253, 1),
      primary: Color.fromRGBO(20, 131, 194, 1),
      inversePrimary: Colors.white,
      onBackground: Color.fromRGBO(247, 247, 249, 1),
      secondary: Color.fromRGBO(43, 43, 43, 1),
      surface: Color.fromRGBO(112, 123, 129, 1),
      outline: Color.fromRGBO(255, 76, 36, 1),
      onPrimary: Color.fromRGBO(100, 173, 215, 1),
    ),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.raleway(
        fontSize: 32,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.raleway(
        fontSize: 26,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: GoogleFonts.raleway(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
