import 'package:baza_ui/module/navigation_module.dart';
import 'package:baza_ui/services/post_service.dart';
import 'package:baza_ui/theme/app_color.dart';
import 'package:baza_ui/theme/app_style.dart';
import 'package:baza_ui/theme/app_text.dart';
import 'package:baza_ui/theme/app_theme.dart';
import 'package:baza_ui/view_models/post_view_model.dart';
import 'package:get_it/get_it.dart';

// ignore: non_constant_identifier_names
final GetIt Injector = GetIt.I;

Future<void> setUpInjector({ bool debugMode = false }) async {
  /// [SERVER SETUP]
  // 서버 설정을 해주세요.

  /// [THEME]
  Injector.registerLazySingleton<AppTheme>(() => AppTheme());
  Injector.registerLazySingleton<AppColor>(() => AppColor());
  Injector.registerLazySingleton<AppStyle>(() => AppStyle());
  Injector.registerLazySingleton<AppText>(() => AppText());

  /// [MODULES]
  Injector.registerLazySingleton<NavigatorModule>(() => NavigatorModule());

  /// [SERVICES]
  // Injector.registerLazySingleton<UserService>(() => UserService());
  Injector.registerLazySingleton<PostService>(() => PostService());

  /// [VIEW MODELS]
  Injector.registerFactory<PostViewModel>(() => PostViewModel());
  // Injector.registerFactory<UserViewModel>(() => UserViewModel());
  // Injector.registerFactory<NumberViewModel>(() => NumberViewModel());
}