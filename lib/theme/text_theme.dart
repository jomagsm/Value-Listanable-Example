import 'package:flutter/material.dart';
import 'package:value_listanable_example/theme/color_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemes {
  static var title = GoogleFonts.montserrat(
    textStyle: TextStyle(
        height: getTextHeight(24, 30),
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: ColorPalette.black),
  );

  static var appBarTitle = GoogleFonts.montserrat(
    textStyle: TextStyle(
        height: getTextHeight(20, 24),
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: ColorPalette.black),
  );

  static var cardTitle = GoogleFonts.montserrat(
    textStyle: TextStyle(
        height: getTextHeight(16, 19),
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: ColorPalette.blue),
  );
}

getTextHeight(double size, double height) {
  return height / size;
}
