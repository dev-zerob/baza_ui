import 'package:baza_ui/screens/membership/components/apple_login_button.dart';
import 'package:baza_ui/screens/membership/components/kakao_login_button.dart';
import 'package:baza_ui/theme/app_color.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class AccountConsolidationResultScreen extends StatelessWidget {
  final String title;
  final String subTitle;
  final String caption;
  final String question;

  AccountConsolidationResultScreen({
    Key key,
    @required this.title,
    this.subTitle,
    this.caption,
    this.question,
  }) : super(key: key);

  final AppColor _color = AppColor.instance;
  final StyleUtil _style = StyleUtil.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                    title,
                    style: _style
                        .textStyle(
                          fontWeight: FontWeight.w700,
                          isEmphasis: true,
                        )
                        .headline2,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    subTitle ?? '',
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
                    caption ?? '',
                    style: _style
                        .textStyle(
                          fontColor: _color.grey[600],
                        )
                        .bodyText1,
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
                  Visibility(
                    visible: question == null ? false : question.isNotEmpty,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          question ?? '',
                          style: _style
                              .textStyle(
                                fontColor: _color.grey[500],
                              )
                              .bodyText1,
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
