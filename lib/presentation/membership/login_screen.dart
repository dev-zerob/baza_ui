import 'package:baza_ui/core/theme/app_color.dart';
import 'package:baza_ui/presentation/membership/account_consolidation_screen.dart';
import 'package:baza_ui/presentation/membership/components/apple_login_button.dart';
import 'package:baza_ui/presentation/membership/components/kakao_login_button.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/login_bg.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: StyleUtil.instance.titlePadding(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 텍스트 영역
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '어쩌고\n저쩌고',
                        style: Theme.of(context).textTheme.headline1.copyWith(
                              fontFamily: StyleUtil.instance.emphasisFont,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      // SizedBox(
                      //   height: 3.0,
                      // ),
                      Text(
                        '바자',
                        style: Theme.of(context).textTheme.headline1.copyWith(
                          fontFamily: StyleUtil.instance.emphasisFont,
                          fontWeight: FontWeight.w700,
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
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 34.0,
                            height: 1.0,
                            color: AppColor.instance.blueGrey[700],
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'or',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: AppColor.instance.blueGrey[700],
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Container(
                            width: 34.0,
                            height: 1.0,
                            color: AppColor.instance.blueGrey[700],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(
                            color: AppColor.instance.grey[200],
                            width: 1.0,
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
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: AppColor.instance.black,
                            fontWeight: FontWeight.w400,
                          ),
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
}
