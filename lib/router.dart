import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/screens/membership/account_integration_screen.dart';
import 'package:baza_ui/screens/membership/apple_login_screen.dart';
import 'package:baza_ui/screens/membership/kakao_login_screen.dart';
import 'package:baza_ui/screens/membership/login_screen.dart';
import 'package:baza_ui/screens/membership/pass_certification_screen.dart';
import 'package:baza_ui/screens/membership/register_integration_screen.dart';
import 'package:baza_ui/screens/membership/register_new_screen.dart';
import 'package:baza_ui/screens/membership/register_screen.dart';
import 'package:baza_ui/screens/membership/register_user_info_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  Widget screen;
  switch (settings.name) {
    case ROUTE_LOGIN:
      screen = LoginScreen();
      break;
    case ROUTE_KAKAO_LOGIN:
      screen = KakaoLoginScreen();
      break;
    case ROUTE_APPLE_LOGIN:
      screen = AppleLoginScreen();
      break;
    case ROUTE_ACCOUNT_INTEGRATION:
      screen = AccountIntegrationScreen();
      break;
    case ROUTE_PASS_CERTIFICATION:
      screen = PassCertificationScreen();
      break;
    case ROUTE_REGISTER_INTEGRATION:
      screen = RegisterIntegrationScreen();
      break;
    case ROUTE_REGISTER_NEW:
      screen = RegisterNewScreen();
      break;
    case ROUTE_REGISTER:
      screen = RegisterScreen();
      break;
    case ROUTE_REGISTER_USER_INFO:
      screen = RegisterUserInfoScreen();
      break;
  }

  return MaterialPageRoute(builder: (context) => screen, settings: settings);
}
