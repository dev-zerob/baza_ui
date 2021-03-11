import 'package:baza_ui/core/theme/app_color.dart';
import 'package:baza_ui/presentation/membership/pass_screen.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class AccountConsolidationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: StyleUtil.instance.appSvgIcon(
          context,
          svgPath: 'assets/icon/ic_appbar_back.svg',
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: StyleUtil.instance.mainPadding(),
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
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            fontFamily: StyleUtil.instance.emphasisFont,
                            fontWeight: FontWeight.w700,
                          ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '기존 회원',
                          style: TextStyle(
                            color: AppColor.instance.primary,
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
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: AppColor.instance.grey[800],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '기존 이용자 확인을 위한 인증입니다.',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: AppColor.instance.grey[600],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              // 버튼 영역
              ElevatedButton(
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
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: AppColor.instance.white,
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
