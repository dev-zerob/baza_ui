import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/router.dart';
import 'package:baza_ui/screens/membership/account_consolidation_screen.dart';
import 'package:baza_ui/screens/membership/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  NavigatorModule _navigator;

  setUpAll(() async {
    await setUpInjector();
    _navigator = Injector<NavigatorModule>();
  });

  group('로그인 화면입니다.', () {
    testWidgets('"기존 회원 로그인" 버튼 클릭 시 "기존 회원 인증" 화면으로 이동합니다.', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(initialRoute: MEMBERSHIP_LOGIN_ROUTE, onGenerateRoute: onGenerateRoute, navigatorKey: _navigator.navigatorKey));

      final Finder finder = find.byKey(Key('account_consolidation_button'));
      expect(finder, findsOneWidget);

      await tester.tap(finder);
      await tester.pumpAndSettle();

      expect(find.byType(AccountConsolidationScreen), findsOneWidget);
    });

  });
}