import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/fresh_basket/routes/fresh_basket_app_route.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/theme/fresh_basket_app_theme.dart';
import 'package:flutter_playground/utile/custom_scroll_behavior.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class FreshBasketApp extends ConsumerStatefulWidget {
  const FreshBasketApp({super.key});

  @override
  FreshBasketAppState createState() => FreshBasketAppState();
}

class FreshBasketAppState extends ConsumerState<FreshBasketApp> {
  @override
  Widget build(BuildContext context) {
    //final themeMode = ref.watch(themeModeNotifier);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      theme: FreshBasketAppTheme.lightTheme,
      darkTheme: FreshBasketAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      routeInformationParser: freshBasketAppRouter.defaultRouteParser(),
      routerDelegate: freshBasketAppRouter.delegate(),
    );
  }
}
