import 'package:flutter_playground/features/apps/models/app_model.dart';
import 'package:flutter_playground/ui/screens/apps/car_booking/car_booking_app_screen.route.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final appsList = Provider<List<AppModel>>(
  (ref) => [
    const AppModel(
      //'/FreshBasketApp'
      name: "Fresh Basket",
      description: "A user-friendly mobile app for buying fresh fruits and vegetables in a single place.",
      designSource: "https://www.figma.com/community/file/1291725321690138984/fresh-baskets",
      source: "",
      img: "assest/apps/fresh_basket/images/app_icon.png",
      forgroundColor: "#FFFFFF",
      routePath: "/FreshBasketApp",
    ),
    const AppModel(
      name: "Car Booking",
      description: "",
      designSource: "https://www.figma.com/community/file/1291131202073146570/car-booking-app",
      source: "",
      img: "assest/apps/car_booking/images/app_icon.png",
      forgroundColor: "#FFFFFF",
      routePath: CarBookingAppScreen.routeName,
    ),
  ],
);
