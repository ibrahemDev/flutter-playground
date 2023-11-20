import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/routes/car_booking_app_route.dart';
import 'package:flutter_playground/apps/car_booking/ui/theme/car_booking_app_theme.dart';
import 'package:flutter_playground/utile/custom_scroll_behavior.dart';

class CarBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final themeMode = ref.watch(themeModeNotifier);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      theme: CarBookingAppTheme.lightTheme,
      darkTheme: CarBookingAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routeInformationParser: carBookingAppRouter.defaultRouteParser(),
      routerDelegate: carBookingAppRouter.delegate(),
    );
  }
}
