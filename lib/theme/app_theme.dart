import 'dart:ui';

import 'package:baza_ui/theme/app_color.dart';
import 'package:baza_ui/theme/app_style.dart';
import 'package:baza_ui/theme/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Theme in the app
class AppTheme {
  static final AppColor color = AppColor();
  static final AppText text = AppText(fontColor: color.black);
  static final AppStyle style = AppStyle(color: color);

  ThemeData getTheme(ThemeMode themeMode) {
    /// 라이트 모드
    return ThemeData(
      brightness: Brightness.light,

      // 기존 테마
      primaryColor: color.primary,
      accentColor: color.secondary,
      splashColor: color.blueGrey[100],
      backgroundColor: color.white,
      scaffoldBackgroundColor: color.white,

      // 앱바
      appBarTheme: AppBarTheme(
        color: color.white,
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