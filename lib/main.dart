import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/router.dart' as Router;
import 'package:baza_ui/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() async {
  setUpInjector();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final NavigatorModule _navigator = Injector<NavigatorModule>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baza Ui',
      theme: AppTheme().getTheme(ThemeMode.light),
      initialRoute: MEMBERSHIP_LOGIN_ROUTE,
      onGenerateRoute: Router.onGenerateRoute,
      navigatorKey: _navigator.navigatorKey,
    );
  }
}