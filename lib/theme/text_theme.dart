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

  static var cardTitle = TextStyle(
      fontFamily: 'Helvetica',
      height: getTextHeight(20, 19.2),
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorPalette.blue);

  static var headerTitle = TextStyle(
      fontFamily: 'Helvetica',
      height: getTextHeight(16, 19.2),
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorPalette.blueHeader);

  static var contentText = TextStyle(
      fontFamily: 'Helvetica',
      height: getTextHeight(14, 17.5),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorPalette.grayText);


  static var date = TextStyle(
      fontFamily: 'Museo Sans Cyrl',
      height: getTextHeight(14, 17.5),
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorPalette.lightGray);
}

getTextHeight(double size, double height) {
  return height / size;
}
