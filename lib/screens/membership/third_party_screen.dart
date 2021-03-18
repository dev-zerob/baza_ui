import 'package:baza_ui/screens/membership/register_user_info.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class ThirdPartyScreen extends StatelessWidget {
  final StyleUtil _style = StyleUtil.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: StyleUtil.instance.paddingAppBar(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '서드파티 진행 화면',
                  style:
                      _style.textStyle(fontWeight: FontWeight.w700).headline1,
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  style: _style.buttonRegular(buttonColor: Colors.limeAccent),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterUserInfo(),
                      ),
                      ModalRoute.withName('/'),
                    );
                  },
                  child: Text(
                    '서드파티 완료',
                    style: _style.textStyle().bodyText2,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
