import 'package:baza_ui/presentation/membership/third_party_screen.dart';
import 'package:flutter/material.dart';

class KaKaoLoginButton extends StatelessWidget {
  const KaKaoLoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xFFFFDC00),
      ),
      onPressed: (){
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
            'assets/images/img_kakao_logo.png',
            width: 21.0,
            height: 21.0,
          ),
          SizedBox(
            width: 7.0,
          ),
          Text(
            '카카오톡으로 로그인',
            style: Theme.of(context).textTheme.subtitle1.copyWith(
              color: Color(0xFF3B1E1E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
