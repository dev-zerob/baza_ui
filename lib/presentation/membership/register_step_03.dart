import 'package:baza_ui/core/theme/app_color.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class RegisterStep03 extends StatefulWidget {
  @override
  _RegisterStep03State createState() => _RegisterStep03State();
}

class _RegisterStep03State extends State<RegisterStep03> {
  bool isNext = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: StyleUtil.instance.appSvgIcon(
          context,
          svgPath: 'assets/icon/ic_appbar_back.svg',
        ),
        title: Text(
          '1 of 3',
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          // Navigator.pushAndRemoveUntil(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => RegisterStep03(),
          //   ),
          //   ModalRoute.withName('/'),
          // );

        },
        child: Container(
          color: Theme.of(context).primaryColor,
          width: double.infinity,
          height: 60.0,
          child: Center(
            child: Text(
              '사이즈를 완성해주세요!',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: AppColor.instance.white,
                    fontWeight: FontWeight.w700,
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
                    TextSpan(text: '사이즈는 맞춤 '),
                    TextSpan(
                      text: '추천',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: '과'
                    ),
                    TextSpan(
                      text: '분류',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    TextSpan(text: '를\n위해서 사용됩니다!'),
                  ],
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
