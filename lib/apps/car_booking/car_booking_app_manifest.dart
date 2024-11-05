import 'package:flutter_playground/apps/car_booking/main_car_booking.dart';

import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';

const carBookingAppManifest = VirtualAppManifestModel(
  name: "Car Booking",
  description: "",
  designSource: "https://www.figma.com/community/file/1291131202073146570/car-booking-app",
  source: "",
  img: "assest/apps/car_booking/images/app_icon.png",
  forgroundColor: "#FFFFFF",
  routePath: "",
  runApp: mainCarBooking,
  getRouter: getCarBookingRouter,
);
