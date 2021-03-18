import 'package:flutter/material.dart';

/// Colors defined in the app's theme
class AppColor {
  /// Basic Color
  Color transparent = Colors.transparent;
  Color black = Colors.black;
  Color white = Colors.white;

  ColorSwatch pink = ColorSwatch(0xFFFF64DD, <int, Color> {
    100: Color(0xFFFFC2F0),
    200: Color(0xFFFF97E7),
    400: Color(0xFFFF64DD),
    700: Color(0xFFFB2CD5),
  });

  ColorSwatch purple = ColorSwatch(0xFF8C40FF, <int, Color> {
    100: Color(0xFFD9C1FE),
    200: Color(0xFFB280FF),
    400: Color(0xFF8C40FF),
    700: Color(0xFF7200FD),
  });

  ColorSwatch yellow = ColorSwatch(0xFFFFE735, <int, Color> {
    100: Color(0xFFFFF8C3),
    200: Color(0xFFFFEE73),
    400: Color(0xFFFFE735),
    700: Color(0xFFFDD430),
  });

  ColorSwatch red = ColorSwatch(0xFFFF454E, <int, Color> {
    100: Color(0xFFFFCCD3),
    200: Color(0xFFF997A9),
    400: Color(0xFFFF454E),
    700: Color(0xFFFF0935),
  });

  ColorSwatch cyan = ColorSwatch(0xFF39F8FF, <int, Color> {
    100: Color(0xFFDAFEFF),
    200: Color(0xFF9FFBFD),
    400: Color(0xFF39F8FF),
    700: Color(0xFF00F2FF),
  });

  /// Theme Color
  ColorSwatch primary = ColorSwatch(0xFF0CBAFF, <int, Color> {
    100: Color(0xFFE3FAFF),
    200: Color(0xFF9BE5FF),
    300: Color(0xFF54CFFF),
    400: Color(0xFF0CBAFF),
    500: Color(0xFF0AA0EC),
    600: Color(0xFF0787D9),
    700: Color(0xFF056DC6),
    800: Color(0xFF0254B3),
    900: Color(0xFF003AA0),
  });

  ColorSwatch secondary = ColorSwatch(0xFF69FF47, <int, Color> {
    100: Color(0xFFF5FFEB),
    200: Color(0xFFC6FFB4),
    300: Color(0xFF98FF7E),
    400: Color(0xFF69FF47),
    500: Color(0xFF52EE75),
    600: Color(0xFF3BDDA3),
    700: Color(0xFF27B785),
    800: Color(0xFF149168),
    900: Color(0xFF006B4A),
  });

  /// Sub Color
  ColorSwatch grey = ColorSwatch(0xFFA0A6A9, <int, Color> {
    100: Color(0xFFF2F5F6),
    200: Color(0xFFE3E7E9),
    300: Color(0xFFBCC2C4),
    400: Color(0xFFA0A6A9),
    500: Color(0xFF848C8D),
    600: Color(0xFF667072),
    700: Color(0xFF4A5357),
    800: Color(0xFF2D3436),
    900: Color(0xFF161B1D),
  });

  ColorSwatch blueGrey = ColorSwatch(0xFFB2E0EC, <int, Color> {
    100: Color(0xFFF0FAFC),
    200: Color(0xFFDBF1F7),
    300: Color(0xFFC7E9F1),
    400: Color(0xFFB2E0EC),
    500: Color(0xFFA2D7E5),
    600: Color(0xFF93C4D0),
    700: Color(0xFF82ABB6),
    800: Color(0xFF74949D),
    900: Color(0xFF617C84),
  });
}