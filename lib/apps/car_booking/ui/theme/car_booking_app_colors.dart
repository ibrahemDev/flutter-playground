import 'package:flutter/material.dart';

class CarBookingAppColors {
  /// App primary color
  static const Color primary = Color(0xff1DA1F2);

  /// App secondary color
  static const Color error = Color(0xffFC698C);

  /// App black color
  static const Color black = Color(0xff14171A);

  /// App white color
  static const Color white = Color(0xffffffff);

  /// Light grey color
  static const Color lightGrey = Color(0xffAAB8C2);

  /// Extra Light grey color
  static const Color extraLightGrey = Color(0xffE1E8ED);
}

CarBookingAppThemeExtensionColors colors(context) => Theme.of(context).extension<CarBookingAppThemeExtensionColors>()!;

@immutable
class CarBookingAppThemeExtensionColors extends ThemeExtension<CarBookingAppThemeExtensionColors> {
  static final CarBookingAppThemeExtensionColors carBookingDarkAppColors = CarBookingAppThemeExtensionColors(
    color1: Colors.blue,
  );
  final Color? color1;

  const CarBookingAppThemeExtensionColors({
    required this.color1,
  });

  @override
  CarBookingAppThemeExtensionColors copyWith({
    Color? color1,
    Color? color2,
    Color? color3,
  }) {
    return CarBookingAppThemeExtensionColors(
      color1: color1 ?? this.color1,
    );
  }

  @override
  CarBookingAppThemeExtensionColors lerp(ThemeExtension<CarBookingAppThemeExtensionColors>? other, double t) {
    if (other is! CarBookingAppThemeExtensionColors) {
      return this;
    }
    return CarBookingAppThemeExtensionColors(
      color1: Color.lerp(color1, other.color1, t),
    );
  }
}
