import 'package:baza_ui/core/theme/app_color.dart';
import 'package:baza_ui/presentation/membership/account_consolidation_screen.dart';
import 'package:baza_ui/presentation/membership/components/apple_login_button.dart';
import 'package:baza_ui/presentation/membership/components/kakao_login_button.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final AppColor _color = AppColor.instance;
  final StyleUtil _style = StyleUtil.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
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
                  // Text Area
                  Text.rich(
                    TextSpan(
                      text: '패션\n플리마켓\n',
                      children: [
                        TextSpan(
                          text: '바자',
                          style: TextStyle(color: _color.primary),
                        )
                      ],
                      style: _style
                          .textStyle(fontWeight: FontWeight.w700)
                          .headline1,
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
                        style: _style.buttonRegular(
                          buttonColor: _color.white,
                          borderSide: BorderSide(
                            width: 1.0,
                            color: _color.grey[200],
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  AccountConsolidationScreen(),
                            ),
                          );
                        },
                        child: Text(
                          '기존 회원 로그인',
                          style: _style.textStyle().bodyText1,
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
