import 'package:flutter_playground/apps/coffe_shop/main_coffe_shop_app.dart';

import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';

const coffeShopAppManifest = VirtualAppManifestModel(
  name: "Coffe Shop",
  description: "",
  designSource: "https://www.figma.com/community/file/1291131202073146570/car-booking-app",
  source: "",
  img: "assest/apps/coffe_shop/images/app_icon.svg",
  forgroundColor: "#FFFFFF",
  routePath: "",
  runApp: mainCoffeShop,
  getRouter: getCoffeShopRouter,
  appIconType: "svg",
);
//coffe_shop_app_manifest


