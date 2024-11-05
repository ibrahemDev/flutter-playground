import 'package:flutter/material.dart';
//import 'package:flutter_playground/features/theme_mode/theme_mode_providers.dart';

import 'package:flutter_playground/routes/app_route.dart';
import 'package:flutter_playground/theme/app_theme.dart';

import 'package:flutter_playground/utile/custom_scroll_behavior.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlutterPlaygroundApp extends ConsumerStatefulWidget {
  const FlutterPlaygroundApp({super.key});

  @override
  FlutterPlaygroundAppState createState() => FlutterPlaygroundAppState();
}

class FlutterPlaygroundAppState extends ConsumerState<FlutterPlaygroundApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    final mainAppRouter = ref.read(mainAppRouterProvider);
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
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      routeInformationParser: mainAppRouter.defaultRouteParser(),
      routerDelegate: mainAppRouter.delegate(),
    );
  }
}
