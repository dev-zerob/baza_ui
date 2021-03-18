import 'package:baza_ui/screens/membership/pass_screen.dart';
import 'package:baza_ui/theme/app_color.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class AccountConsolidationScreen extends StatelessWidget {
  final AppColor _color = AppColor.instance;
  final StyleUtil _style = StyleUtil.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _style.appBarIconButton(
          context,
          svgPath: 'assets/icon/ic_appbar_back.svg',
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
                      text: '🤔\n',
                      style: _style
                          .textStyle(
                            fontWeight: FontWeight.w700,
                            isEmphasis: true,
                          )
                          .headline2,
                      children: <TextSpan>[
                        TextSpan(
                          text: '기존 회원',
                          style: TextStyle(
                            color: _color.primary,
                          ),
                        ),
                        TextSpan(text: '이신가요?'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    '본인 인증 후, 새롭게 바뀐 바자를\n이용해주세요 :)',
                    style: _style
                        .textStyle(
                          fontColor: _color.grey[800],
                          fontWeight: FontWeight.w500,
                        )
                        .subtitle1,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '기존 이용자 확인을 위한 인증입니다.',
                    style: _style
                        .textStyle(
                          fontColor: _color.grey[600],
                        )
                        .bodyText1,
                  ),
                ],
              ),
              // 버튼 영역
              ElevatedButton(
                style: _style.buttonRegular(buttonColor: _color.primary),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PassScreen(),
                    ),
                  );
                },
                child: Text(
                  'PASS 본인인증 하기',
                  style: _style
                      .textStyle(
                        fontColor: _color.white,
                        fontWeight: FontWeight.w700,
                      )
                      .bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
