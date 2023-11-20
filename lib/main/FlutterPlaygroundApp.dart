import 'package:flutter/material.dart';
//import 'package:flutter_playground/features/theme_mode/theme_mode_providers.dart';

import 'package:flutter_playground/ui/routes/app_route.dart';
import 'package:flutter_playground/ui/theme/app_theme.dart';
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
    //final themeMode = ref.watch(themeModeNotifier);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    //var brightness = Theme.of(context).brightness;
    //log(brightness.name);
    super.didChangePlatformBrightness();
  }
}
