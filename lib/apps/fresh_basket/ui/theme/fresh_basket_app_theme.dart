import 'package:flutter/material.dart';
//import 'package:flutter_playground/sharedd/data/local/storage_service.dart';
//import 'package:flutter_playground/sharedd/domain/providers/sharedpreferences_storage_service_provider.dart';

import 'fresh_basket_app_colors.dart';
import 'fresh_basket_app_text_styles.dart';
import 'fresh_basket_app_text_themes.dart';
//import 'package:flutter_riverpod/flutter_riverpod.dart';
/*
final appThemeProvider = StateNotifierProvider<AppThemeModeNotifier, ThemeMode>(
  (ref) {
    final storage = ref.watch(storageServiceProvider);
    return AppThemeModeNotifier(storage);
  },
);

class AppThemeModeNotifier extends StateNotifier<ThemeMode> {
  final StroageService stroageService;

  ThemeMode currentTheme = ThemeMode.light;

  AppThemeModeNotifier(this.stroageService) : super(ThemeMode.light) {
    getCurrentTheme();
  }

  void toggleTheme() {
    
    state = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    stroageService.set("AppTheme", state.name);
  }

  void getCurrentTheme() async {
    final theme = await stroageService.get("AppTheme");
    final value = ThemeMode.values.byName('${theme ?? 'light'}');
    state = value;
  }
}*/

class FreshBasketAppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: FreshBasketAppTextStyles.fontFamily,
      primaryColor: FreshBasketAppColors.primary,

      colorScheme: const ColorScheme.dark(
        primary: FreshBasketAppColors.primary,
        secondary: FreshBasketAppColors.lightGrey,
        error: FreshBasketAppColors.error,
        background: FreshBasketAppColors.black,
      ),
      // backgroundColor: FreshBasketAppColors.black,
      scaffoldBackgroundColor: FreshBasketAppColors.black,
      textTheme: FreshBasketAppTextThemes.darkTextTheme,
      primaryTextTheme: FreshBasketAppTextThemes.primaryTextTheme,

      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: FreshBasketAppColors.black,
        titleTextStyle: FreshBasketAppTextStyles.h2,
      ),
    );
  }

  /// Light theme data of the app
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: FreshBasketAppColors.primary,
      textTheme: FreshBasketAppTextThemes.textTheme,
      primaryTextTheme: FreshBasketAppTextThemes.primaryTextTheme,
      scaffoldBackgroundColor: Color(0xffF3F3F3),
      colorScheme: const ColorScheme.light(
        primary: FreshBasketAppColors.primary,
        secondary: FreshBasketAppColors.lightGrey,
        error: FreshBasketAppColors.error,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        foregroundColor: Colors.green,
        backgroundColor: Color(0xffF3F3F3),
      ),
    );
  }
}
