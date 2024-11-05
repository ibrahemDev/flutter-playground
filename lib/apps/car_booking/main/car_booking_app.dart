import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/routes/car_booking_app_route.dart';
import 'package:flutter_playground/apps/car_booking/ui/theme/car_booking_app_theme.dart';
import 'package:flutter_playground/utile/custom_scroll_behavior.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarBookingApp extends ConsumerWidget {
  const CarBookingApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carBookingAppRouter = ref.read(carBookingAppRouterProvider);
    //final themeMode = ref.watch(themeModeNotifier);
    return MaterialApp.router(
      builder: (context, child) {
        return SafeArea(
          top: true,
          child: child!,
        );
      },
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
