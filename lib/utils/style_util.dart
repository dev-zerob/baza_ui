import 'package:baza_ui/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StyleUtil {
  static final StyleUtil instance = StyleUtil();
  static final AppColor _appColor = AppColor.instance;

  // Defined Value
  final String _fontEmphasis = 'Gmarket';
  final String _fontEn = 'Montserrat';
  final String _fontKr = 'SpoqaHanSansNeo';

  final Size _iconSize = Size(16.0, 16.0);
  final double _inputBorderRadius = 10.0;

  /// 텍스트
  TextTheme textStyle({
    Color fontColor = Colors.black,
    FontWeight fontWeight = FontWeight.w400,
    bool isEmphasis = false,
  }) {
    return TextTheme(
      headline1: TextStyle(
        fontSize: 38.0,
        height: 1.26,
        letterSpacing: -0.03,
        color: fontColor,
        fontWeight: fontWeight,
        fontFamily: isEmphasis ? _fontEmphasis : _fontEn,
        fontFamilyFallback: [_fontEn, _fontKr],
      ),
      headline2: TextStyle(
        fontSize: 30.0,
        height: 1.26,
        letterSpacing: -0.01,
        color: fontColor,
        fontWeight: fontWeight,
        fontFamily: isEmphasis ? _fontEmphasis : _fontEn,
        fontFamilyFallback: [_fontEn, _fontKr],
      ),
      headline3: TextStyle(
        fontSize: 24.0,
        height: 1.33,
        letterSpacing: -0.01,
        color: fontColor,
        fontWeight: fontWeight,
        fontFamily: isEmphasis ? _fontEmphasis : _fontEn,
        fontFamilyFallback: [_fontEn, _fontKr],
      ),
      headline4: TextStyle(
        fontSize: 20.0,
        height: 1.4,
        letterSpacing: -0.01,
        color: fontColor,
        fontWeight: fontWeight,
        fontFamily: isEmphasis ? _fontEmphasis : _fontEn,
        fontFamilyFallback: [_fontEn, _fontKr],
      ),
      subtitle1: TextStyle(
        fontSize: 18.0,
        height: 1.44,
        letterSpacing: -0.01,
        color: fontColor,
        fontWeight: fontWeight,
        fontFamily: isEmphasis ? _fontEmphasis : _fontEn,
        fontFamilyFallback: [_fontEn, _fontKr],
      ),
      subtitle2: TextStyle(
        fontSize: 15.0,
        height: 1.46,
        letterSpacing: -0.01,
        color: fontColor,
        fontWeight: fontWeight,
        fontFamily: isEmphasis ? _fontEmphasis : _fontEn,
        fontFamilyFallback: [_fontEn, _fontKr],
      ),
      bodyText1: TextStyle(
        fontSize: 18.0,
        height: 1.33,
        letterSpacing: -0.01,
        color: fontColor,
        fontWeight: fontWeight,
        fontFamily: isEmphasis ? _fontEmphasis : _fontEn,
        fontFamilyFallback: [_fontEn, _fontKr],
      ),
      bodyText2: TextStyle(
        fontSize: 15.0,
        height: 1.46,
        letterSpacing: -0.01,
        color: fontColor,
        fontWeight: fontWeight,
        fontFamily: isEmphasis ? _fontEmphasis : _fontEn,
        fontFamilyFallback: [_fontEn, _fontKr],
      ),
      caption: TextStyle(
        fontSize: 13.0,
        height: 1.38,
        letterSpacing: -0.01,
        color: fontColor,
        fontWeight: fontWeight,
        fontFamily: isEmphasis ? _fontEmphasis : _fontEn,
        fontFamilyFallback: [_fontEn, _fontKr],
      ),
    );
  }

  /// 패딩
  EdgeInsets paddingAppBar() =>
      const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 40.0);

  EdgeInsets paddingNoAppBar() =>
      const EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 40.0);

  EdgeInsets paddingPopup() =>
      const EdgeInsets.fromLTRB(24.0, 70.0, 24.0, 40.0);

  /// 앱바
  Widget appBarIconButton(
    BuildContext context, {
    @required String svgPath,
    Function onTap,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(99.0),
      onTap: onTap ??
          () {
            Navigator.pop(context);
          },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          svgPath,
          color: _appColor.grey[700],
          width: _iconSize.width,
          height: _iconSize.height,
        ),
      ),
    );
  }

  /// 버튼
  ButtonStyle buttonRegular({
    @required Color buttonColor,
    BorderSide borderSide,
  }) {
    return ElevatedButton.styleFrom(
      elevation: 0.0,
      primary: buttonColor,
      minimumSize: const Size(double.infinity, 60.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(99.0)),
      ),
      side: borderSide ?? BorderSide.none,
      onPrimary: _appColor.blueGrey[100],
    );
  }

  /// 입력폼
  InputDecoration inputDecorationRegular() {
    BorderRadius radius = BorderRadius.circular(_inputBorderRadius);

    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: radius,
        borderSide: BorderSide(width: 1.0, color: _appColor.grey[200]),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: BorderSide(width: 1.0, color: _appColor.grey[200]),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: BorderSide(width: 2.0, color: _appColor.primary),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: BorderSide(width: 1.0, color: _appColor.red[700]),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: BorderSide(width: 1.0, color: _appColor.red[700]),
      ),
      disabledBorder: InputBorder.none,
      counterText: '',
      contentPadding: const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 16.0),
    );
  }
}
