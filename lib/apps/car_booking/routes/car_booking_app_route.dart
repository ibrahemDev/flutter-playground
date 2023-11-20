import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_view_model.dart';
import 'package:flutter_playground/apps/car_booking/ui/screens/details/details_screen.route.dart';
import 'package:flutter_playground/apps/car_booking/ui/screens/home/home_screen.route.dart';
import 'package:flutter_playground/apps/car_booking/ui/screens/payment/payment_screen.dart';

import 'package:flutter_playground/apps/car_booking/ui/screens/splash/splash_screen.route.dart';
import 'package:flutter_playground/apps/car_booking/ui/screens/sucess/sucess_screen.route.dart';

part 'car_booking_app_route.gr.dart';

final carBookingAppRouter = CarBookingAppRoute();

@AutoRouterConfig(
  generateForDir: ["lib/apps/car_booking"],
)
class CarBookingAppRoute extends _$CarBookingAppRoute {
  @override
  RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: "/splash",
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: "/rentDetails",
          page: DetailsRoute.page,
        ),
        AutoRoute(
          path: HomeScreen.routeName,
          page: HomeScreenRoute.page,
        ),
        AutoRoute(
          path: "/paymentScreen",
          page: PaymentRoute.page,
        ),
        AutoRoute(
          path: "/sucessScreen",
          page: SucessRoute.page,
        ),
      ];
}
