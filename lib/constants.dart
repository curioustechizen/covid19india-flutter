import 'dart:math';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kActiveHex = 0x007BFF;
const kConfirmed = const Color(0xFFFF073A);
const kActive = const Color(0xFF007BFF);
const kRecovered = const Color(0xFF28A745);
const kDeceased = const Color(0xFF6C757D);
const kTested = const Color(0x201aa2dd);
const kCanvasColor = const Color(0xfff6f6f7);
const kDrawerTextcolor = const Color(0xFF6c757d);
const kDrawerSelectedColor = const Color(0xff4c75f2);

const kAnimationDurationShort = const Duration(milliseconds: 300);
const kAnimationDurationMedium = const Duration(milliseconds: 400);
const kAnimationDurationLong = const Duration(milliseconds: 550);

final Map<Category, List<Color>> colorGradientMap = {
  Category.confirmed: [const Color(0xFFFFEFE6), const Color(0xffE40101)],
  Category.active: [Colors.white, const Color(0xff0f579f)],
  Category.recovered: [Colors.white, const Color(0xff0a7232)],
  Category.deceased: [Colors.white, const Color(0xff2f2f2f)],
};

final Map<Category, Color> categoryColorsMap = {
  Category.confirmed: kConfirmed,
  Category.active: kActive,
  Category.recovered: kRecovered,
  Category.deceased: kDeceased
};

const kMapSvgHeight = 331.71;
const kMapSvgWidth = 320.0;

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

Color tintColor(Color color, double factor) =>
    Color.fromRGBO(
        tintValue(color.red, factor),
        tintValue(color.green, factor),
        tintValue(color.blue, factor),
        1);

TextTheme appTextTheme = TextTheme(
  headline1: GoogleFonts.overpass(
      fontSize: 100,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5),
  headline2: GoogleFonts.overpass(
      fontSize: 62, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3:
  GoogleFonts.overpass(fontSize: 50, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.overpass(
      fontSize: 35, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5:
  GoogleFonts.overpass(fontSize: 25, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.overpass(
      fontSize: 21, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.overpass(
      fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.overpass(
      fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);