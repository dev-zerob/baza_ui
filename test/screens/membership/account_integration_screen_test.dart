import 'package:baza_ui/constants/keys.dart';
import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/router.dart';
import 'package:baza_ui/screens/membership/pass_certification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  NavigatorModule _navigator;
  setUpAll(() async {
    await setUpInjector();
    _navigator = Injector<NavigatorModule>();
  });

  testWidgets(
    '"PASS 본인인증 하기" 버튼 클릭 시 "pass 인증" 화면으로 이동합니다.',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          initialRoute: ROUTE_ACCOUNT_INTEGRATION,
          onGenerateRoute: onGenerateRoute,
          navigatorKey: _navigator.key,
        ),
      );

      final Finder finder = find.byKey(Key(KEY_PASS_CERTIFICATION_BUTTON));
      expect(finder, findsOneWidget);

      await tester.tap(finder);
      await tester.pumpAndSettle();

      expect(find.byType(PassCertificationScreen), findsOneWidget);
    },
  );
}
