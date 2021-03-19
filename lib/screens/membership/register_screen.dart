import 'package:baza_ui/constants/strings.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/screens/membership/components/apple_login_button.dart';
import 'package:baza_ui/screens/membership/components/kakao_login_button.dart';
import 'package:baza_ui/theme/app_color.dart';
import 'package:baza_ui/theme/app_style.dart';
import 'package:baza_ui/theme/app_text.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  final AppColor _color = Injector<AppColor>();
  final AppText _text = Injector<AppText>();
  final AppStyle _style = Injector<AppStyle>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: _style.paddingNoAppBar(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 텍스트 영역
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    REGISTER_TITLE,
                    style: _text.headline2(
                      fontWeight: FontWeight.w700,
                      isEmphasis: true,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    REGISTER_SUBTITLE,
                    style: _text.subtitle1(
                      fontColor: _color.grey[800],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              // 버튼 영역
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  KaKaoLoginButton(),
                  SizedBox(
                    height: 10.0,
                  ),
                  AppleLoginButton(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        REGISTER_QUESTIONS,
                        style: _text.bodyText1(
                          fontColor: _color.grey[500],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}