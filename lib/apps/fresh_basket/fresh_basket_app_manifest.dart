import 'package:flutter_playground/apps/fresh_basket/main_fresh_basket.dart';
import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';

const freshBasketAppManifest = VirtualAppManifestModel(
  name: "Fresh Basket",
  description: "A user-friendly mobile app for buying fresh fruits and vegetables in a single place.",
  designSource: "https://www.figma.com/community/file/1291725321690138984/fresh-baskets",
  source: "",
  img: "assest/apps/fresh_basket/images/app_icon.png",
  forgroundColor: "#FFFFFF",
  routePath: "/FreshBasketApp",
  runApp: mainFreshBasket,
  getRouter: getFreshBasketRouter,
);
