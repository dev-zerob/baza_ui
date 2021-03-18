import 'package:baza_ui/screens/membership/account_consolidation_screen.dart';
import 'package:baza_ui/screens/membership/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:baza_ui/constants/routes.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  Widget screen;
  switch (settings.name) {
    case MEMBERSHIP_LOGIN_ROUTE:
      screen = LoginScreen();
      break;
    case MEMBERSHIP_ACCOUNT_CONSOLIDATION:
      screen = AccountConsolidationScreen();
      break;
  }

  return MaterialPageRoute(builder: (context) => screen,);
}
