import 'package:baza_ui/constants/strings.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/screens/membership/components/apple_login_button.dart';
import 'package:baza_ui/screens/membership/components/kakao_login_button.dart';
import 'package:baza_ui/theme/app_color.dart';
import 'package:baza_ui/theme/app_style.dart';
import 'package:baza_ui/theme/app_text.dart';
import 'package:flutter/material.dart';

class RegisterIntegrationScreen extends StatelessWidget {
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
                    REGISTER_INTEGRATION_TITLE,
                    style: _text.headline2(
                      fontWeight: FontWeight.w700,
                      isEmphasis: true,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    REGISTER_INTEGRATION_SUBTITLE,
                    style: _text.subtitle1(
                      fontColor: _color.grey[800],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    REGISTER_INTEGRATION_CAPTION,
                    style: _text.bodyText1(
                      fontColor: _color.grey[600],
                    ),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}