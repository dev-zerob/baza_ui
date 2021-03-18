import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/router.dart' as Router;
import 'package:baza_ui/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baza Ui',
      theme: AppTheme().getTheme(ThemeMode.light),
      initialRoute: LOGIN_ROUTE,
      onGenerateRoute: Router.onGenerateRoute,
    );
  }
}