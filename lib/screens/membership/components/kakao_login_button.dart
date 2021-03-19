import 'package:baza_ui/constants/keys.dart';
import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/theme/app_style.dart';
import 'package:baza_ui/theme/app_text.dart';
import 'package:flutter/material.dart';

class KaKaoLoginButton extends StatelessWidget {
  final AppStyle _style = Injector<AppStyle>();
  final AppText _text = Injector<AppText>();
  final NavigatorModule _navigator = Injector<NavigatorModule>();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: Key(KEY_KAKAO_LOGIN_BUTTON),
      style: _style.buttonRegular(
        buttonColor: Color(0xFFFFDC00),
      ),
      onPressed: () {
        _navigator.navigatorTo(ROUTE_KAKAO_LOGIN);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/img_kakao_logo.png',
            width: 21.0,
            height: 21.0,
          ),
          SizedBox(
            width: 7.0,
          ),
          Text(
            '카카오톡으로 로그인',
            style: _text.subtitle1(
              fontColor: const Color(0xFF3B1E1E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
