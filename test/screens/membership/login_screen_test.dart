import 'package:baza_ui/constants/keys.dart';
import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/router.dart';
import 'package:baza_ui/screens/membership/account_integration_screen.dart';
import 'package:baza_ui/screens/membership/apple_login_screen.dart';
import 'package:baza_ui/screens/membership/kakao_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  NavigatorModule _navigator;

  setUpAll(() async {
    await setUpInjector();
    _navigator = Injector<NavigatorModule>();
  });

  group(
    '로그인 페이지 경로 테스트',
    () {
      testWidgets(
        '"기존 회원 로그인" 버튼 클릭 시 "기존 회원 인증" 화면으로 이동합니다.',
            (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: ROUTE_LOGIN,
              onGenerateRoute: onGenerateRoute,
              navigatorKey: _navigator.key,
            ),
          );

          final Finder finder = find.byKey(Key(KEY_ACCOUNT_INTEGRATION_BUTTON));
          expect(finder, findsOneWidget);

          await tester.tap(finder);
          await tester.pumpAndSettle();

          expect(find.byType(AccountIntegrationScreen), findsOneWidget);
        },
      );

      testWidgets(
        '"카카오톡으로 로그인" 버튼 클릭 시 "Kakao 서드파티 인증" 화면으로 이동합니다.',
            (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: ROUTE_LOGIN,
              onGenerateRoute: onGenerateRoute,
              navigatorKey: _navigator.key,
            ),
          );

          final Finder finder = find.byKey(Key(KEY_KAKAO_LOGIN_BUTTON));
          expect(finder, findsOneWidget);

          await tester.tap(finder);
          await tester.pumpAndSettle();

          expect(find.byType(KakaoLoginScreen), findsOneWidget);
        },
      );

      testWidgets(
        '"Apple로 로그인" 버튼 클릭 시 "Apple 서드파티 인증" 화면으로 이동합니다.',
            (WidgetTester tester) async {
          await tester.pumpWidget(
            MaterialApp(
              initialRoute: ROUTE_LOGIN,
              onGenerateRoute: onGenerateRoute,
              navigatorKey: _navigator.key,
            ),
          );

          final Finder finder = find.byKey(Key(KEY_APPLE_LOGIN_BUTTON));
          expect(finder, findsOneWidget);

          await tester.tap(finder);
          await tester.pumpAndSettle();

          expect(find.byType(AppleLoginScreen), findsOneWidget);
        },
      );
    },
  );
}
