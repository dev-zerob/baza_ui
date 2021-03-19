import 'package:baza_ui/constants/routes.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/router.dart';
import 'package:baza_ui/screens/membership/register_user_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  NavigatorModule _navigator;

  setUpAll(() async {
    await setUpInjector();
    _navigator = Injector<NavigatorModule>();
  });

  // TODO: 카카오 서드 파티 테스트 코드 작성 (현재 임시 테스트 코드)

  testWidgets(
    '카카오톡 로그인 완료시 "유저 정보 입력" 화면으로 이동합니다.',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          initialRoute: ROUTE_KAKAO_LOGIN,
          onGenerateRoute: onGenerateRoute,
          navigatorKey: _navigator.key,
        ),
      );

      final Finder finder = find.text('서드파티 완료');
      expect(finder, findsOneWidget);

      await tester.tap(finder);
      await tester.pumpAndSettle();

      expect(find.byType(RegisterUserInfoScreen), findsWidgets);
    },
  );
}
