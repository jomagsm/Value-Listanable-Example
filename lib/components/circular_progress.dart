import 'package:flutter/material.dart';
import 'package:value_listanable_example/theme/color_theme.dart';

Widget customCircularProgress() {
  return Scaffold(
    body: Center(child: CircularProgressIndicator()),
    backgroundColor: ColorPalette.gray,
  );
}