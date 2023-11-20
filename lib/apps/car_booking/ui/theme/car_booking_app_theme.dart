import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/ui/theme/car_booking_app_colors.dart';
import 'package:flutter_playground/apps/car_booking/ui/theme/car_booking_app_text_styles.dart';
import 'package:flutter_playground/apps/car_booking/ui/theme/car_booking_app_text_themes.dart';

class CarBookingAppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: CarBookingAppTextStyles.fontFamily,
      primaryColor: CarBookingAppColors.primary,

      colorScheme: const ColorScheme.dark(
        primary: CarBookingAppColors.primary,
        secondary: CarBookingAppColors.lightGrey,
        error: CarBookingAppColors.error,
        background: CarBookingAppColors.black,
      ),
      // backgroundColor: CarBookingAppColors.black,
      scaffoldBackgroundColor: CarBookingAppColors.black,
      textTheme: CarBookingAppTextThemes.darkTextTheme,
      primaryTextTheme: CarBookingAppTextThemes.primaryTextTheme,

      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: CarBookingAppColors.black,
        titleTextStyle: CarBookingAppTextStyles.h2,
      ),
    );
  }

  /// Light theme data of the app
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: CarBookingAppColors.primary,
      textTheme: CarBookingAppTextThemes.textTheme,
      primaryTextTheme: CarBookingAppTextThemes.primaryTextTheme,
      scaffoldBackgroundColor: Color(0xffF3F3F3),
      colorScheme: const ColorScheme.light(
        primary: CarBookingAppColors.primary,
        secondary: CarBookingAppColors.lightGrey,
        error: CarBookingAppColors.error,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        foregroundColor: Colors.grey.shade700,
        backgroundColor: Color(0xffF3F3F3),
      ),
    );
  }
}
