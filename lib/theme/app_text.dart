import 'package:flutter/material.dart';

/// Text defined in the app's theme
class AppText {
  final Color fontColor;
  AppText({@required this.fontColor});

  /// Defined Use App Font
  /// [_emphasis : 강조 폰트, _english : 영문 폰트, _korea : 한국 폰트]
  final String _emphasisFont = 'Gmarket';
  final String _enFont = 'Montserrat';
  final String _krFont = 'SpoqaHanSansNeo';

  /// Defined Common TextStyle Option
  TextStyle _defaultTextStyle(
    Color fontColor,
    FontWeight fontWeight,
    bool isEmphasis,
  ) {
    return TextStyle(
      color: fontColor ?? this.fontColor,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontFamily: isEmphasis ?? false ? _emphasisFont : _enFont,
      fontFamilyFallback: [_enFont, _krFont],
    );
  }

  TextStyle headline1({
    Color fontColor,
    FontWeight fontWeight,
    bool isEmphasis,
  }) {
    return _defaultTextStyle(fontColor, fontWeight, isEmphasis)
        .copyWith(fontSize: 38.0, height: 1.26, letterSpacing: -0.03);
  }

  TextStyle headline2({
    Color fontColor,
    FontWeight fontWeight,
    bool isEmphasis,
  }) {
    return _defaultTextStyle(fontColor, fontWeight, isEmphasis)
        .copyWith(fontSize: 30.0, height: 1.26, letterSpacing: -0.01);
  }

  TextStyle headline3({
    Color fontColor,
    FontWeight fontWeight,
    bool isEmphasis,
  }) {
    return _defaultTextStyle(fontColor, fontWeight, isEmphasis)
        .copyWith(fontSize: 24.0, height: 1.33, letterSpacing: -0.01);
  }

  TextStyle headline4({
    Color fontColor,
    FontWeight fontWeight,
    bool isEmphasis,
  }) {
    return _defaultTextStyle(fontColor, fontWeight, isEmphasis)
        .copyWith(fontSize: 20.0, height: 1.4, letterSpacing: -0.01);
  }

  TextStyle subtitle1({
    Color fontColor,
    FontWeight fontWeight,
    bool isEmphasis,
  }) {
    return _defaultTextStyle(fontColor, fontWeight, isEmphasis)
        .copyWith(fontSize: 18.0, height: 1.44, letterSpacing: -0.01);
  }

  TextStyle subtitle2({
    Color fontColor,
    FontWeight fontWeight,
    bool isEmphasis,
  }) {
    return _defaultTextStyle(fontColor, fontWeight, isEmphasis)
        .copyWith(fontSize: 15.0, height: 1.46, letterSpacing: -0.01);
  }

  TextStyle bodyText1({
    Color fontColor,
    FontWeight fontWeight,
    bool isEmphasis,
  }) {
    return _defaultTextStyle(fontColor, fontWeight, isEmphasis)
        .copyWith(fontSize: 18.0, height: 1.33, letterSpacing: -0.01);
  }

  TextStyle bodyText2({
    Color fontColor,
    FontWeight fontWeight,
    bool isEmphasis,
  }) {
    return _defaultTextStyle(fontColor, fontWeight, isEmphasis)
        .copyWith(fontSize: 15.0, height: 1.46, letterSpacing: -0.01);
  }

  TextStyle caption({
    Color fontColor,
    FontWeight fontWeight,
    bool isEmphasis,
  }) {
    return _defaultTextStyle(fontColor, fontWeight, isEmphasis)
        .copyWith(fontSize: 13.0, height: 1.38, letterSpacing: -0.01);
  }
}
