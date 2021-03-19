import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/theme/app_style.dart';
import 'package:baza_ui/theme/app_text.dart';
import 'package:flutter/material.dart';

class AppleLoginScreen extends StatelessWidget {
  final AppText _text = Injector<AppText>();
  final AppStyle _style = Injector<AppStyle>();
  final NavigatorModule _navigator = Injector<NavigatorModule>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          padding: _style.paddingAppBar(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Apple 로그인 중',
                style: _text.headline1(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: _style.buttonRegular(buttonColor: Colors.limeAccent),
                onPressed: () {
                  _navigator.navigatorToAndRemoveUntil(ROUTE_REGISTER_USER_INFO, ModalRoute.withName(ROUTE_LOGIN));
                },
                child: Text(
                  '서드파티 완료',
                  style: _text.bodyText2(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
