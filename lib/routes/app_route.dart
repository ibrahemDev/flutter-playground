import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';
import 'package:flutter_playground/features/virtual_apps/screens/virtual_app_wrapper/virtual_app_wrapper_screen.route.dart';
import 'package:flutter_playground/features/virtual_apps/screens/virtual_app_details/virtual_app_details_screen.route.dart';
import 'package:flutter_playground/features/virtual_apps/screens/virtual_apps/virtual_apps_screen.route.dart';
import 'package:flutter_playground/features/virtual_apps/screens/splash/splash_screen.route.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
part 'app_route.gr.dart';

late final AppRouter mainAppRouter;

final mainAppRouterProvider = Provider<AppRouter>((ref) {
  mainAppRouter = AppRouter(ref: ref);
  return mainAppRouter;
});

@AutoRouterConfig(
  generateForDir: [
    "lib/ui",
    "lib/features",
  ],
)
class AppRouter extends RootStackRouter {
  final ProviderRef<AppRouter> ref;

  AppRouter({super.navigatorKey, required this.ref});
  @override
  RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        //@
        CustomRoute(
          page: VirtualAppsRoute.page,
          path: VirtualAppsScreen.routeName,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 1500,
        ),

        /*AutoRoute(
          page: AppsViewRoute.page,
          
          path: "/AppsViewScreen",
        ),*/

        //@
        AutoRoute(
          page: VirtualAppDetailsRoute.page,
          path: VirtualAppDetailsScreen.routeName,
        ),

        //@
        AutoRoute(
          page: VirtualAppWrapperRoute.page,
          path: VirtualAppWrapperScreen.routeName,
        ),
      ];
}
