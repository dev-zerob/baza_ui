import 'package:baza_ui/constants/keys.dart';
import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/constants/strings.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/screens/membership/components/apple_login_button.dart';
import 'package:baza_ui/screens/membership/components/kakao_login_button.dart';
import 'package:baza_ui/theme/app_color.dart';
import 'package:baza_ui/theme/app_style.dart';
import 'package:baza_ui/theme/app_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final AppColor _color = Injector<AppColor>();
  final AppText _text = Injector<AppText>();
  final AppStyle _style = Injector<AppStyle>();
  final NavigatorModule _navigator = Injector<NavigatorModule>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/login_bg.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: _style.paddingPopup(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title Area
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: LOGIN_TITLE,
                        ),
                        TextSpan(
                          text: APP_NAME,
                          style: TextStyle(color: _color.primary),
                        )
                      ],
                      style: _text.headline1(fontWeight: FontWeight.w700),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      KaKaoLoginButton(),
                      SizedBox(
                        height: 10.0,
                      ),
                      AppleLoginButton(),
                      SizedBox(
                        height: 10.0,
                      ),
                      _orDivider(_color.blueGrey[700]),
                      SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        key: Key(KEY_ACCOUNT_INTEGRATION_BUTTON),
                        style: _style.buttonRegular(
                          buttonColor: _color.white,
                          borderSide: BorderSide(
                            width: 1.0,
                            color: _color.grey[200],
                          ),
                        ),
                        onPressed: () {
                          _navigator.navigatorTo(ROUTE_ACCOUNT_INTEGRATION);
                        },
                        child: Text(
                          '기존 회원 로그인',
                          style: _text.bodyText1(),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _orDivider(Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 34.0,
          height: 1.0,
          color: color,
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          'or',
          style: TextStyle(
            fontSize: 13.0,
            color: color,
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        Container(
          width: 34.0,
          height: 1.0,
          color: color,
        ),
      ],
    );
  }
}
