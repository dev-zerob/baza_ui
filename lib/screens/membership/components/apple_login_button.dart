import 'file:///C:/dev/project/private/baza_ui/lib/screens/membership/third_party_screen.dart';
import 'package:baza_ui/utils/style_util.dart';
import 'package:flutter/material.dart';

class AppleLoginButton extends StatelessWidget {
  final StyleUtil _style = StyleUtil.instance;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: _style.buttonRegular(
        buttonColor: Color(0xFF000000),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ThirdPartyScreen(),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/img_apple_logo.png',
            width: 21.0,
            height: 21.0,
          ),
          SizedBox(
            width: 7.0,
          ),
          Text(
            'Apple로 로그인',
            style: _style
                .textStyle(
                  fontColor: const Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500,
                )
                .subtitle1,
          ),
        ],
      ),
    );
  }
}
