import 'package:flutter_playground/apps/car_booking/car_booking_app_manifest.dart';
import 'package:flutter_playground/apps/fresh_basket/fresh_basket_app_manifest.dart';

import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final virtualAppsListProvider = Provider<List<VirtualAppManifestModel>>(
  (ref) => [
    freshBasketAppManifest,
    /*const VirtualAppModel(
      name: "Fresh Basket",
      description: "A user-friendly mobile app for buying fresh fruits and vegetables in a single place.",
      designSource: "https://www.figma.com/community/file/1291725321690138984/fresh-baskets",
      source: "",
      img: "assest/apps/fresh_basket/images/app_icon.png",
      forgroundColor: "#FFFFFF",
      routePath: "/FreshBasketApp",
      runApp: mainFreshBasket,
      routerFactory: freshBasketRouterFactory,
    ),*/
    carBookingAppManifest
    /*const VirtualAppModel(
      name: "Car Booking",
      description: "",
      designSource: "https://www.figma.com/community/file/1291131202073146570/car-booking-app",
      source: "",
      img: "assest/apps/car_booking/images/app_icon.png",
      forgroundColor: "#FFFFFF",
      routePath: CarBookingAppScreen.routeName,
      runApp: mainCarBooking,
      getRouter: carBookingRouterFactory,
    ),*/
  ],
);
