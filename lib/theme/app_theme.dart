import 'dart:ui';

import 'package:baza_ui/injector.dart';
import 'package:baza_ui/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Theme in the app
class AppTheme {
  final AppColor _color = Injector<AppColor>();

  ThemeData getTheme(ThemeMode themeMode) {
    /// 라이트 모드
    return ThemeData(
      brightness: Brightness.light,

      // 기존 테마
      primaryColor: _color.primary,
      accentColor: _color.secondary,
      splashColor: _color.blueGrey[100],
      backgroundColor: _color.white,
      scaffoldBackgroundColor: _color.white,

      // 앱바
      appBarTheme: AppBarTheme(
        color: _color.white,
        elevation: 0.0,
        centerTitle: true,
      ),

      // 페이지 애니메이션
      pageTransitionsTheme: PageTransitionsTheme(builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }),
    );
  }
}