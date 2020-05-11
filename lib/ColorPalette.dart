
import 'dart:math';

import 'package:flutter/material.dart';

const kActiveHex = 0x007BFF;
const kConfirmed = const Color(0xFFFF073A);
const kActive = const Color(0xFF007BFF);
const kRecovered = const Color(0x28A745);
const kDeceased = const Color(0x6C757D);
const kCanvasColor = const Color(0xfff6f6f7);
const kDrawerTextcolor = const Color(0xFF6c757d);
const kDrawerSelectedColor = const Color(0xff4c75f2);

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.5),
    100: tintColor(color, 0.4),
    200: tintColor(color, 0.3),
    300: tintColor(color, 0.2),
    400: tintColor(color, 0.1),
    500: tintColor(color, 0),
    600: tintColor(color, -0.1),
    700: tintColor(color, -0.2),
    800: tintColor(color, -0.3),
    900: tintColor(color, -0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);