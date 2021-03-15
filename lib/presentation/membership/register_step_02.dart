import 'package:baza_ui/core/theme/app_color.dart';
import 'package:baza_ui/presentation/membership/components/gender_button.dart';
import 'package:baza_ui/presentation/membership/register_step_01.dart';
import 'package:baza_ui/presentation/membership/register_step_03.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterStep02 extends StatefulWidget {
  @override
  _RegisterStep02State createState() => _RegisterStep02State();
}

class _RegisterStep02State extends State<RegisterStep02> {
  bool isNext = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: StyleUtil.instance.appSvgIcon(
          context,
          svgPath: 'assets/icon/ic_appbar_back.svg',
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterStep01(),
              ),
              ModalRoute.withName('/'),
            );
          }
        ),
        title: Text(
          '1 of 3',
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
      bottomNavigationBar: Visibility(
        visible: isNext,
        child: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterStep03(),
              ),
              ModalRoute.withName('/'),
            );
          },
          child: Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            height: 60.0,
            child: Center(
              child: Text(
                '다음으로',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: AppColor.instance.white,
                      fontWeight: FontWeight.w700,
                    ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: StyleUtil.instance.noAppBarPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        fontFamily: StyleUtil.instance.emphasisFont,
                        fontWeight: FontWeight.w700,
                      ),
                  children: [
                    TextSpan(text: '바자 서비스를\n'),
                    TextSpan(
                        text: '100% ',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        )),
                    TextSpan(text: '즐기기위해\n정보를 입력해주세요!'),
                  ],
                ),
              ),
              SizedBox(
                height: 23.0,
              ),
              Visibility(
                visible: isNext,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '당신의 체형은?',
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                            color: AppColor.instance.grey[800],
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 15.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '마른 편',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontFamily: StyleUtil.instance.emphasisFont,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            '✅',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontFamily: StyleUtil.instance.emphasisFont,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 15.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: AppColor.instance.grey[900],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '보통인 편',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(
                                  fontFamily: StyleUtil.instance.emphasisFont,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 15.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: AppColor.instance.grey[900],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '통통한 편',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(
                                  fontFamily: StyleUtil.instance.emphasisFont,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Divider(
                      height: 1.0,
                      color: AppColor.instance.grey[200],
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                  ],
                ),
              ),
              Text(
                '당신의 키는?',
                style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: AppColor.instance.grey[800],
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                width: double.infinity,
                child: TextField(
                  maxLength: 5,
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  decoration: InputDecoration(
                    counterText: '',
                  ),
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        color: AppColor.instance.grey[900],
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Visibility(
                visible: !isNext,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      FocusScope.of(context).requestFocus(new FocusNode());
                      isNext = true;
                    });
                  },
                  child: Text(
                    '입니다',
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontWeight: FontWeight.w700,
                          color: AppColor.instance.white,
                        ),
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
