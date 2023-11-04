import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:master_brain/ui/screens/game.dart';
import 'package:master_brain/ui/screens/splash.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: SplashScreen.route,
          page: SplashRoute.page,
        ),
        AutoRoute(
          path: GameScreen.route,
          page: GameRoute.page,
        ),
      ];
}
