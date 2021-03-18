import 'package:baza_ui/injector.dart';
import 'package:baza_ui/theme/app_color.dart';
import 'package:flutter/material.dart';

/// Style defined in the app's theme
class AppStyle {
  final AppColor _color = Injector<AppColor>();

  // Defined Value
  final double _inputBorderRadius = 10.0;

  /// 패딩
  EdgeInsets paddingAppBar() =>
      const EdgeInsets.fromLTRB(24.0, 10.0, 24.0, 40.0);

  EdgeInsets paddingNoAppBar() =>
      const EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 40.0);

  EdgeInsets paddingPopup() =>
      const EdgeInsets.fromLTRB(24.0, 70.0, 24.0, 40.0);

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
      onPrimary: _color.blueGrey[100],
    );
  }

  /// 입력폼
  InputDecoration inputDecorationRegular() {
    BorderRadius radius = BorderRadius.circular(_inputBorderRadius);

    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: radius,
        borderSide: BorderSide(width: 1.0, color: _color.grey[200]),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: BorderSide(width: 1.0, color: _color.grey[200]),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: BorderSide(width: 2.0, color: _color.primary),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: BorderSide(width: 1.0, color: _color.red[700]),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: BorderSide(width: 1.0, color: _color.red[700]),
      ),
      disabledBorder: InputBorder.none,
      counterText: '',
      contentPadding: const EdgeInsets.fromLTRB(20.0, 18.0, 20.0, 16.0),
    );
  }
}
