import 'package:flutter/material.dart';

class NavigatorModule {
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  Future<dynamic> navigatorTo(String routeNm, {Object argument}) =>
      key.currentState.pushNamed(routeNm, arguments: argument);

  Future<dynamic> navigatorToAndRemoveUntil(String routeNm, RoutePredicate predicate, {Object arguments}) =>
      key.currentState.pushNamedAndRemoveUntil(routeNm, predicate, arguments: arguments);

  Future<dynamic> navigatorToReplace(String routeNm, {Object result, Object arguments}) =>
      key.currentState.pushReplacementNamed(routeNm, result: result, arguments: arguments);

  void navigatorBack({result}) => key.currentState.pop(result);
}
