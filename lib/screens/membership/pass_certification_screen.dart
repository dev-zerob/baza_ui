import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/theme/app_style.dart';
import 'package:baza_ui/theme/app_text.dart';
import 'package:flutter/material.dart';

class PassCertificationScreen extends StatelessWidget {
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
                'Pass 연동화면',
                style: _text.headline1(
                  fontWeight: FontWeight.w700,
                  isEmphasis: true,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: _style.buttonRegular(
                  buttonColor: Colors.limeAccent,
                ),
                onPressed: () {
                  _navigator.navigatorToAndRemoveUntil(ROUTE_REGISTER_INTEGRATION, ModalRoute.withName(ROUTE_LOGIN));
                },
                child: Text(
                  '기존 회원일 경우',
                  style: _text.bodyText1(
                    fontWeight: FontWeight.w700,
                    isEmphasis: true,
                  ),
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
                  _navigator.navigatorToAndRemoveUntil(ROUTE_REGISTER_NEW, ModalRoute.withName(ROUTE_LOGIN));
                },
                child: Text(
                  '기존 회원이 아닐 경우',
                  style: _text.bodyText1(
                    fontWeight: FontWeight.w700,
                    isEmphasis: true,
                  ),
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
                  _navigator.navigatorToAndRemoveUntil(ROUTE_REGISTER, ModalRoute.withName(ROUTE_LOGIN));
                },
                child: Text(
                  '이미 연동한 회원일 경우',
                  style: _text.bodyText1(
                    fontWeight: FontWeight.w700,
                    isEmphasis: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
