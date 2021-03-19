// import 'package:baza_ui/screens/product/product_list_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
//
//
// void main() {
//   testWidgets('카카오톡 로그인 버튼 클릭 시 상품 조회 화면 나타납니다.', (WidgetTester tester) async {
//     //Test code
//     await tester.pumpWidget(MaterialApp(home: KaKaoLoginButton()));
//     final buttonFinder = find.text('카카오톡으로 로그인');
//
//     expect(buttonFinder, findsOneWidget);
//
//     // kakao button exist
//     final buttonKakaoKey = Key('kakaoButton');
//     expect(find.byKey(buttonKakaoKey), findsOneWidget);
//
//     await tester.tap(find.byKey(buttonKakaoKey));
//     await tester.pumpAndSettle();
//
//     expect(find.byKey(Key('ProductListScreen')), findsOneWidget);
//     expect(find.text('productListScreen'), findsOneWidget);
//     expect(find.byType(ProductListScreen), findsOneWidget);
//   });
// }
