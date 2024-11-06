import 'package:flutter/material.dart';

import 'package:flutter_playground/apps/car_booking/ui/theme/car_booking_app_theme.dart';
import 'package:flutter_playground/apps/coffe_shop/routes/coffe_shop_app_route.dart';
import 'package:flutter_playground/utile/custom_scroll_behavior.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoffeShopApp extends ConsumerWidget {
  const CoffeShopApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final coffeShopAppRouter = ref.read(coffeShopAppRouterProvider);
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
      routeInformationParser: coffeShopAppRouter.defaultRouteParser(),
      routerDelegate: coffeShopAppRouter.delegate(),
    );
  }
}
