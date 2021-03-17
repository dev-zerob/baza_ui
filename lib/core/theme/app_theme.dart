import 'dart:ui';

import 'package:baza_ui/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppColor appColor = AppColor.instance;

  ThemeData getTheme(ThemeMode themeMode) {
    /// 라이트 모드
    return ThemeData(
      brightness: Brightness.light,

      // 색상
      primaryColor: appColor.primary,
      accentColor: appColor.secondary,
      splashColor: appColor.blueGrey[100],
      backgroundColor: appColor.white,
      scaffoldBackgroundColor: appColor.white,

      // 앱바 테마
      appBarTheme: _appBarTheme(appBarColor: appColor.white),

      // 페이지 애니메이션 테마
      pageTransitionsTheme: PageTransitionsTheme(builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }),
    );
  }

  /// 앱바 테마
  AppBarTheme _appBarTheme({
    @required Color appBarColor,
  }) =>
      AppBarTheme(
        color: appBarColor,
        elevation: 0.0,
        centerTitle: true,
      );

  /*// 버튼 테마
      elevatedButtonTheme: _elevatedButtonThemeData(
        buttonColor: appColor.primary,
        splashColor: appColor.primary.withOpacity(0.8),
      ),

      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(width: 1.0, color: AppColor.instance.grey[200]),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(width: 1.0, color: AppColor.instance.grey[200]),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(width: 2.0, color: AppColor.instance.primary),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(width: 1.0, color: AppColor.instance.red[700]),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(width: 1.0, color: AppColor.instance.red[700]),
        ),
        disabledBorder: InputBorder.none,
        contentPadding: const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 16.0),
      ),*/
}