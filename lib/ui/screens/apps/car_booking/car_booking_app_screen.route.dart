import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/car_booking_main.dart';

@RoutePage()
class CarBookingAppScreen extends StatelessWidget {
  static const String routeName = '/CarBookingApp';

  const CarBookingAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CarBookingMainWidget();
  }
}
