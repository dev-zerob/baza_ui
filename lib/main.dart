import 'package:baza_ui/core/theme/app_theme.dart';
import 'package:baza_ui/presentation/membership/login_screen.dart';
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
      home: LoginScreen(),
    );
  }
}