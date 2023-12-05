

import 'package:flutter/material.dart';

Color mainColor = const Color(0xff17273D);

Color secondaryColor = const Color(0xFFF4B151);

Color thirdColor = const Color(0xff029791);


// Color YankeesBlue= HexColor('17273D');
// Color ViridianGreen=HexColor('029791');
// Color PoliceBlue=HexColor('3D5872');
// Color SilverChalice=HexColor('F4B151');

MaterialColor primarySwatch = buildMaterialColor(secondaryColor);

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value,swatch);
}