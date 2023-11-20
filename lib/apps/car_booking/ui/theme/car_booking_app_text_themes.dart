import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/ui/theme/car_booking_app_colors.dart';
import 'package:flutter_playground/apps/car_booking/ui/theme/car_booking_app_text_styles.dart';

//fresh_basket_app_text_themes
//FreshBasketApp_text_styles
class CarBookingAppTextThemes {
  /// Main text theme

  static TextTheme get textTheme {
    return const TextTheme(
      bodyLarge: CarBookingAppTextStyles.bodyLg,
      bodyMedium: CarBookingAppTextStyles.body,
      titleMedium: CarBookingAppTextStyles.bodySm,
      titleSmall: CarBookingAppTextStyles.bodyXs,
      displayLarge: CarBookingAppTextStyles.h1,
      displayMedium: CarBookingAppTextStyles.h2,
      displaySmall: CarBookingAppTextStyles.h3,
      headlineMedium: CarBookingAppTextStyles.h4,
    );
  }

  /// Dark text theme

  static TextTheme get darkTextTheme {
    return TextTheme(
      bodyLarge: CarBookingAppTextStyles.bodyLg.copyWith(color: CarBookingAppColors.white),
      bodyMedium: CarBookingAppTextStyles.body.copyWith(color: CarBookingAppColors.white),
      titleMedium: CarBookingAppTextStyles.bodySm.copyWith(color: CarBookingAppColors.white),
      titleSmall: CarBookingAppTextStyles.bodyXs.copyWith(color: CarBookingAppColors.white),
      displayLarge: CarBookingAppTextStyles.h1.copyWith(color: CarBookingAppColors.white),
      displayMedium: CarBookingAppTextStyles.h2.copyWith(color: CarBookingAppColors.white),
      displaySmall: CarBookingAppTextStyles.h3.copyWith(color: CarBookingAppColors.white),
      headlineMedium: CarBookingAppTextStyles.h4.copyWith(color: CarBookingAppColors.white),
    );
  }

  /// Primary text theme

  static TextTheme get primaryTextTheme {
    return TextTheme(
      bodyLarge: CarBookingAppTextStyles.bodyLg.copyWith(color: CarBookingAppColors.primary),
      bodyMedium: CarBookingAppTextStyles.body.copyWith(color: CarBookingAppColors.primary),
      titleMedium: CarBookingAppTextStyles.bodySm.copyWith(color: CarBookingAppColors.primary),
      titleSmall: CarBookingAppTextStyles.bodyXs.copyWith(color: CarBookingAppColors.primary),
      displayLarge: CarBookingAppTextStyles.h1.copyWith(color: CarBookingAppColors.primary),
      displayMedium: CarBookingAppTextStyles.h2.copyWith(color: CarBookingAppColors.primary),
      displaySmall: CarBookingAppTextStyles.h3.copyWith(color: CarBookingAppColors.primary),
      headlineMedium: CarBookingAppTextStyles.h4.copyWith(color: CarBookingAppColors.primary),
    );
  }
}
