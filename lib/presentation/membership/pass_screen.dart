import 'package:baza_ui/core/theme/app_color.dart';
import 'package:baza_ui/presentation/membership/account_consolidation_result_screen.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class PassScreen extends StatelessWidget {
  final StyleUtil _style = StyleUtil.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: _style.paddingAppBar(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Pass 연동화면',
                style: _style
                    .textStyle(
                      fontWeight: FontWeight.w700,
                      isEmphasis: true,
                    )
                    .headline1,
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: _style.buttonRegular(
                  buttonColor: Colors.limeAccent,
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountConsolidationResultScreen(
                        title: '👋\n다시 만나게 되어\n반가워요!',
                        subTitle: '아래 중, 한가지를 택하여 로그인하시면\n기존 정보와 연동됩니다!',
                        caption: '이후, 해당 방법으로 로그인 가능합니다',
                      ),
                    ),
                    ModalRoute.withName('/'),
                  );
                },
                child: Text(
                  '기존 회원일 경우',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: _style.buttonRegular(
                  buttonColor: Colors.limeAccent,
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountConsolidationResultScreen(
                        title: '😲\n바자에 가입하지\n않으셨어요!',
                        subTitle: '아래 방법 중, 한가지를 택하여\n신규 가입해주세요 :)',
                        caption: '이후, 해당 방법으로 로그인 가능합니다',
                        question: '아니에요! 분명 가입했어요!',
                      ),
                    ),
                    ModalRoute.withName('/'),
                  );
                },
                child: Text(
                  '기존 회원이 아닐 경우',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: _style.buttonRegular(
                  buttonColor: Colors.limeAccent,
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountConsolidationResultScreen(
                        title: '😚\n기존 정보와\n이미 연동하셨어요!',
                        subTitle: '연동하신 방법으로 로그인해주세요',
                        question: '연동한 적이 없으신가요?',
                      ),
                    ),
                    ModalRoute.withName('/'),
                  );
                },
                child: Text(
                  '이미 연동한 회원일 경우',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: _style.buttonRegular(
                  buttonColor: Colors.limeAccent,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  '탈퇴한 회원일 경우',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
