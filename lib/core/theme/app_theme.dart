import 'package:baza_ui/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  AppColor appColor = AppColor.instance;

  ThemeData getTheme(ThemeMode themeMode) {
    bool isDark = themeMode == ThemeMode.dark;

    if (isDark) {
      /// 다크 모드
      return ThemeData(
        brightness: Brightness.dark,
      );
    }

    /// 라이트 모드
    return ThemeData(
      brightness: Brightness.light,

      // 색상
      primaryColor: appColor.primary,
      accentColor: appColor.secondary,
      backgroundColor: appColor.white,
      scaffoldBackgroundColor: appColor.white,
      errorColor: appColor.red[700],
      splashColor: appColor.blueGrey[100],

      // 텍스트 테마
      fontFamily: 'Montserrat',
      textTheme: _textTheme(fontColor: appColor.black),

      // 아이콘 테마
      iconTheme: _iconTheme(iconColor: appColor.grey[700]),

      // 앱바 테마
      appBarTheme: _appBarTheme(appBarColor: appColor.white),

      // 버튼 테마
      elevatedButtonTheme: _elevatedButtonThemeData(
        buttonColor: appColor.primary,
        splashColor: appColor.primary.withOpacity(0.8),
      ),

      radioTheme: RadioThemeData(),

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
      ),

      // 페이지 애니메이션 테마
      pageTransitionsTheme: PageTransitionsTheme(builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      }),
    );
  }

  Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;

  void setSystemTheme(ThemeMode themeMode) {
    bool _isLight = themeMode == ThemeMode.light;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: _isLight ? Brightness.light : Brightness.dark,
        systemNavigationBarIconBrightness:
            _isLight ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: _isLight ? appColor.white : appColor.black,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }

  /// 텍스트 테마
  TextTheme _textTheme({
    @required Color fontColor,
  }) =>
      TextTheme(
        headline1: TextStyle(
          fontSize: 38.0,
          height: 1.26,
          letterSpacing: -0.03,
          color: appColor.black,
          fontFamily: 'Montserrat',
          fontFamilyFallback: ['Montserrat', 'SpoqaHanSansNeo'],
        ),
        headline2: TextStyle(
          fontSize: 30.0,
          height: 1.26,
          letterSpacing: -0.01,
          color: appColor.black,
          fontFamily: 'Montserrat',
          fontFamilyFallback: ['Montserrat', 'SpoqaHanSansNeo'],
        ),
        headline3: TextStyle(
          fontSize: 24.0,
          height: 1.33,
          letterSpacing: -0.01,
          color: appColor.black,
          fontFamily: 'Montserrat',
          fontFamilyFallback: ['Montserrat', 'SpoqaHanSansNeo'],
        ),
        headline4: TextStyle(
          fontSize: 20.0,
          height: 1.4,
          letterSpacing: -0.01,
          color: appColor.black,
          fontFamily: 'Montserrat',
          fontFamilyFallback: ['Montserrat', 'SpoqaHanSansNeo'],
        ),
        subtitle1: TextStyle(
          fontSize: 18.0,
          height: 1.44,
          letterSpacing: -0.01,
          color: appColor.black,
          fontFamily: 'Montserrat',
          fontFamilyFallback: ['Montserrat', 'SpoqaHanSansNeo'],
        ),
        subtitle2: TextStyle(
          fontSize: 15.0,
          height: 1.46,
          letterSpacing: -0.01,
          color: appColor.black,
          fontFamily: 'Montserrat',
          fontFamilyFallback: ['Montserrat', 'SpoqaHanSansNeo'],
        ),
        bodyText1: TextStyle(
          fontSize: 18.0,
          height: 1.33,
          letterSpacing: -0.01,
          color: appColor.black,
          fontFamily: 'Montserrat',
          fontFamilyFallback: ['Montserrat', 'SpoqaHanSansNeo'],
        ),
        bodyText2: TextStyle(
          fontSize: 15.0,
          height: 1.46,
          letterSpacing: -0.01,
          color: appColor.black,
          fontFamily: 'Montserrat',
          fontFamilyFallback: ['Montserrat', 'SpoqaHanSansNeo'],
        ),
        caption: TextStyle(
          fontSize: 13.0,
          height: 1.38,
          letterSpacing: -0.01,
          color: appColor.black,
          fontFamily: 'Montserrat',
          fontFamilyFallback: ['Montserrat', 'SpoqaHanSansNeo'],
        ),
      );

  /// 앱바 테마
  AppBarTheme _appBarTheme({
    @required Color appBarColor,
  }) =>
      AppBarTheme(
        color: appBarColor,
        elevation: 0.0,
        centerTitle: true,
      );

  /// 아이콘 테마
  IconThemeData _iconTheme({
    @required Color iconColor,
  }) =>
      IconThemeData(
        color: iconColor,
        size: 16.0,
      );

  /// 버튼 테마
  ElevatedButtonThemeData _elevatedButtonThemeData({
    @required Color buttonColor,
    @required Color splashColor,
  }) =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            elevation: 0.0,
            primary: appColor.primary,
            minimumSize: const Size(double.infinity, 60.0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(99.0)),
            ),
            onPrimary: appColor.blueGrey[100]),
      );
}
