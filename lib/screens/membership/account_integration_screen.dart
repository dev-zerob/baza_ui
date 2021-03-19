import 'package:baza_ui/constants/keys.dart';
import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/theme/app_color.dart';
import 'package:baza_ui/theme/app_style.dart';
import 'package:baza_ui/theme/app_text.dart';
import 'package:flutter/material.dart';

class AccountIntegrationScreen extends StatelessWidget {
  final AppColor _color = Injector<AppColor>();
  final AppText _text = Injector<AppText>();
  final AppStyle _style = Injector<AppStyle>();
  final NavigatorModule _navigator = Injector<NavigatorModule>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _style.buttonSvgIcon(
          iconNm: 'ic_appbar_back',
          onTap: () {
            _navigator.navigatorBack();
          }
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: _style.paddingAppBar(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 텍스트 영역
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '🤔\n',
                        ),
                        TextSpan(
                          text: '기존 회원',
                          style: TextStyle(
                            color: _color.primary,
                          ),
                        ),
                        TextSpan(
                          text: '이신가요?',
                        ),
                      ],
                      style: _text.headline2(
                          fontWeight: FontWeight.w700, isEmphasis: true),
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    '본인 인증 후, 새롭게 바뀐 바자를\n이용해주세요 :)',
                    style: _text.subtitle1(
                      fontColor: _color.grey[800],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '기존 이용자 확인을 위한 인증입니다.',
                    style: _text.bodyText1(
                      fontColor: _color.grey[600],
                    ),
                  ),
                ],
              ),
              // 버튼 영역
              ElevatedButton(
                key: Key(KEY_PASS_CERTIFICATION_BUTTON),
                style: _style.buttonRegular(buttonColor: _color.primary),
                onPressed: () {
                  _navigator.navigatorToReplace(ROUTE_PASS_CERTIFICATION);
                },
                child: Text(
                  'PASS 본인인증 하기',
                  style: _text.bodyText1(
                    fontColor: _color.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
