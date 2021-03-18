import 'package:baza_ui/screens/membership/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:baza_ui/constants/routes.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  Widget screen;
  switch (settings.name) {
    case LOGIN_ROUTE:
      screen = LoginScreen();
      break;
    default:
      print(settings.name);
      print(LOGIN_ROUTE);
  }

  return MaterialPageRoute(builder: (context) => screen,);
}
