import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class ThirdPartyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: StyleUtil.instance.mainPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '서드파티\n로그인 화면',
                style: Theme.of(context).textTheme.headline1.copyWith(fontFamily: 'Gmarket', fontWeight: FontWeight.w700),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Container(),
                    ),
                    ModalRoute.withName('/'),
                  );
                },
                child: Text(
                  '로그인 완료',
                  style: Theme.of(context).textTheme.button,
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
