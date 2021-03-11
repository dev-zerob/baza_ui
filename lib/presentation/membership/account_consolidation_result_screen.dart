import 'package:baza_ui/core/theme/app_color.dart';
import 'package:baza_ui/presentation/membership/components/apple_login_button.dart';
import 'package:baza_ui/presentation/membership/components/kakao_login_button.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class AccountConsolidationResultScreen extends StatelessWidget {
  final String title;
  final String subTitle;
  final String caption;
  final String question;

  const AccountConsolidationResultScreen({
    Key key,
    @required this.title,
    this.subTitle,
    this.caption,
    this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: StyleUtil.instance.noAppBarPadding(),
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
                    style: Theme.of(context).textTheme.headline2.copyWith(
                          fontFamily: StyleUtil.instance.emphasisFont,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    subTitle ?? '',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: AppColor.instance.grey[800],
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    caption ?? '',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: AppColor.instance.grey[600],
                          fontWeight: FontWeight.w400,
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
                  Visibility(
                    visible: question == null ? false : question.isNotEmpty,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: InkWell(
                        onTap: (){},
                        child: Text(
                          question ?? '',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: AppColor.instance.grey[500],
                            fontWeight: FontWeight.w400,
                          ),
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
