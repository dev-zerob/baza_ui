import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/theme/app_theme.dart';
import 'package:get_it/get_it.dart';

// ignore: non_constant_identifier_names
final GetIt Injector = GetIt.I;

Future<void> setUpInjector({ bool debugMode = false }) async {
  /// [SERVER SETUP]
  // 서버 설정을 해주세요.

  /// [THEME]
  Injector.registerLazySingleton<AppTheme>(() => AppTheme());

  /// [MODULES]
  Injector.registerLazySingleton<NavigatorModule>(() => NavigatorModule());

  /// [SERVICES]
  // Injector.registerLazySingleton<UserService>(() => UserService());

  /// [VIEW MODELS]
  // Injector.registerFactory<UserViewModel>(() => UserViewModel());
  // Injector.registerFactory<NumberViewModel>(() => NumberViewModel());
}