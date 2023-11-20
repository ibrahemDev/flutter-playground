import 'package:flutter/material.dart';
import 'fresh_basket_app_colors.dart';
import 'fresh_basket_app_text_styles.dart';

//fresh_basket_app_text_themes
//FreshBasketApp_text_styles
class FreshBasketAppTextThemes {
  /// Main text theme

  static TextTheme get textTheme {
    return const TextTheme(
      bodyLarge: FreshBasketAppTextStyles.bodyLg,
      bodyMedium: FreshBasketAppTextStyles.body,
      titleMedium: FreshBasketAppTextStyles.bodySm,
      titleSmall: FreshBasketAppTextStyles.bodyXs,
      displayLarge: FreshBasketAppTextStyles.h1,
      displayMedium: FreshBasketAppTextStyles.h2,
      displaySmall: FreshBasketAppTextStyles.h3,
      headlineMedium: FreshBasketAppTextStyles.h4,
    );
  }

  /// Dark text theme

  static TextTheme get darkTextTheme {
    return TextTheme(
      bodyLarge: FreshBasketAppTextStyles.bodyLg.copyWith(color: FreshBasketAppColors.white),
      bodyMedium: FreshBasketAppTextStyles.body.copyWith(color: FreshBasketAppColors.white),
      titleMedium: FreshBasketAppTextStyles.bodySm.copyWith(color: FreshBasketAppColors.white),
      titleSmall: FreshBasketAppTextStyles.bodyXs.copyWith(color: FreshBasketAppColors.white),
      displayLarge: FreshBasketAppTextStyles.h1.copyWith(color: FreshBasketAppColors.white),
      displayMedium: FreshBasketAppTextStyles.h2.copyWith(color: FreshBasketAppColors.white),
      displaySmall: FreshBasketAppTextStyles.h3.copyWith(color: FreshBasketAppColors.white),
      headlineMedium: FreshBasketAppTextStyles.h4.copyWith(color: FreshBasketAppColors.white),
    );
  }

  /// Primary text theme

  static TextTheme get primaryTextTheme {
    return TextTheme(
      bodyLarge: FreshBasketAppTextStyles.bodyLg.copyWith(color: FreshBasketAppColors.primary),
      bodyMedium: FreshBasketAppTextStyles.body.copyWith(color: FreshBasketAppColors.primary),
      titleMedium: FreshBasketAppTextStyles.bodySm.copyWith(color: FreshBasketAppColors.primary),
      titleSmall: FreshBasketAppTextStyles.bodyXs.copyWith(color: FreshBasketAppColors.primary),
      displayLarge: FreshBasketAppTextStyles.h1.copyWith(color: FreshBasketAppColors.primary),
      displayMedium: FreshBasketAppTextStyles.h2.copyWith(color: FreshBasketAppColors.primary),
      displaySmall: FreshBasketAppTextStyles.h3.copyWith(color: FreshBasketAppColors.primary),
      headlineMedium: FreshBasketAppTextStyles.h4.copyWith(color: FreshBasketAppColors.primary),
    );
  }
}
