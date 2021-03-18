import 'package:flutter/material.dart';

class NavigatorModule {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigatorTo(String routeNm, {Object argument}) =>
      navigatorKey.currentState.pushNamed(routeNm, arguments: argument);

  Future<dynamic> navigatorToAndRemoveUntil(String routeNm, {Object argument}) =>
      navigatorKey.currentState.pushNamedAndRemoveUntil(routeNm, (route) => false);

  void navigatorBack({result}) => navigatorKey.currentState.pop(result);
}
