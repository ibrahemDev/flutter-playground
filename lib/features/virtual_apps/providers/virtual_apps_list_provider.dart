import 'package:flutter_playground/apps/car_booking/car_booking_app_manifest.dart';
import 'package:flutter_playground/apps/coffe_shop/coffe_shop_app_manifest.dart';
import 'package:flutter_playground/apps/fresh_basket/fresh_basket_app_manifest.dart';

import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final virtualAppsListProvider = Provider<List<VirtualAppManifestModel>>(
  (ref) => [
    freshBasketAppManifest,
    carBookingAppManifest,
    coffeShopAppManifest,
  ],
);
