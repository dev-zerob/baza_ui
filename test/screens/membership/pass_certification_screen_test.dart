import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/router.dart';
import 'package:baza_ui/screens/membership/register_integration_screen.dart';
import 'package:baza_ui/screens/membership/register_new_screen.dart';
import 'package:baza_ui/screens/membership/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  NavigatorModule _navigator;

  setUpAll(() async {
    await setUpInjector();
    _navigator = Injector<NavigatorModule>();
  });

  group(
    'PASS 인증 경로 테스트',
    () {
      // TODO: PASS 인증 테스트 로직 추가 (현재 임시 테스트 코드)

      testWidgets(
        '기존 회원인 경우 "회원 연동" 화면으로 이동합니다.',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: ROUTE_PASS_CERTIFICATION,
              onGenerateRoute: onGenerateRoute,
              navigatorKey: _navigator.key,
            ),
          );

          final Finder finder = find.text('기존 회원일 경우');
          expect(finder, findsOneWidget);

          await tester.tap(finder);
          await tester.pumpAndSettle();

          expect(find.byType(RegisterIntegrationScreen), findsOneWidget);
        },
      );

      testWidgets(
        '기존 회원이 아닌 경우 "신규 가입" 화면으로 이동합니다.',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: ROUTE_PASS_CERTIFICATION,
              onGenerateRoute: onGenerateRoute,
              navigatorKey: _navigator.key,
            ),
          );

          final Finder finder = find.text('기존 회원이 아닐 경우');
          expect(finder, findsOneWidget);

          await tester.tap(finder);
          await tester.pumpAndSettle();

          expect(find.byType(RegisterNewScreen), findsOneWidget);
        },
      );

      testWidgets(
        '이미 연동한 경우 "기존 방식 로그인" 화면으로 이동합니다.',
        (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: ROUTE_PASS_CERTIFICATION,
              onGenerateRoute: onGenerateRoute,
              navigatorKey: _navigator.key,
            ),
          );

          final Finder finder = find.text('이미 연동한 회원일 경우');
          expect(finder, findsOneWidget);

          await tester.tap(finder);
          await tester.pumpAndSettle();

          expect(find.byType(RegisterScreen), findsOneWidget);
        },
      );

      testWidgets(
        '이미 연동한 경우 "기존 방식 로그인" 화면으로 이동합니다.',
            (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: ROUTE_PASS_CERTIFICATION,
              onGenerateRoute: onGenerateRoute,
              navigatorKey: _navigator.key,
            ),
          );

          final Finder finder = find.text('이미 연동한 회원일 경우');
          expect(finder, findsOneWidget);

          await tester.tap(finder);
          await tester.pumpAndSettle();

          expect(find.byType(RegisterScreen), findsOneWidget);
        },
      );
    },
  );
}
