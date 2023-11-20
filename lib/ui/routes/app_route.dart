import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/features/apps/models/app_model.dart';
import 'package:flutter_playground/ui/screens/apps/car_booking/car_booking_app_screen.route.dart';

import 'package:flutter_playground/ui/screens/apps_view/apps_view_screen.route.dart';
import 'package:flutter_playground/ui/screens/splash/splash_screen.route.dart';
import 'package:flutter_playground/ui/screens/app_details/app_details_screen.route.dart';
import 'package:flutter_playground/ui/screens/apps/fresh_basket/fresh_basket_app_screen.route.dart';
part 'app_route.gr.dart';

final appRouter = AppRouter();

@AutoRouterConfig(
  generateForDir: [
    "lib/ui",
  ],
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        CustomRoute(
          page: AppsViewRoute.page,
          path: "/AppsViewScreen",
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 1500,
        ),
        /*AutoRoute(
          page: AppsViewRoute.page,
          
          path: "/AppsViewScreen",
        ),*/
        AutoRoute(
          page: AppDetailsRoute.page,
          path: "/AppDetails",
        ),
        AutoRoute(
          page: FreshBasketAppRoute.page,
          path: "/FreshBasketApp",
        ),
        AutoRoute(
          page: CarBookingAppRoute.page,
          path: CarBookingAppScreen.routeName,
        ),
      ];
}
