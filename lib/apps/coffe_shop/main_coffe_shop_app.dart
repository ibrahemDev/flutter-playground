import 'package:auto_route/auto_route.dart';

import 'package:flutter_playground/apps/coffe_shop/coffe_shop_app.dart';
import 'package:flutter_playground/apps/coffe_shop/coffe_shop_app_manifest.dart';
import 'package:flutter_playground/apps/coffe_shop/routes/coffe_shop_app_route.dart';

import 'package:flutter_playground/features/shared_prefs_storage/providers/prefix_provider.dart';
import 'package:flutter_playground/features/virtual_apps/services/run_virtual_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

RootStackRouter? getCoffeShopRouter() {
  //final carBookingAppRoute = CarBookingAppRoute();
  //CarBookingAppRoute.currentRouter = carBookingAppRoute;
  return CoffeShopAppRoute.currentRouter;
}

//carBookingRouterFactory,freshBasketRouterFactory
Future<void> mainCoffeShop() async {
  final coffeShopAppRoute = CoffeShopAppRoute();
  //final RootStackRouter? Function() getVirtualAppRouter = () {
  //  return carBookingRouterFactory();
  //}; getVirtualAppRouter,
  runVirtualApp(
    coffeShopAppManifest,
    ProviderScope(
      overrides: [
        sharedPrefsStorageRepositoryPrefixProvider.overrideWith((ref) => 'CoffeShopApp_'),
        coffeShopAppRouterProvider.overrideWith((ref) {
          CoffeShopAppRoute.currentRouter = coffeShopAppRoute;
          ref.onDispose(() {
            CoffeShopAppRoute.currentRouter?.dispose();
            CoffeShopAppRoute.currentRouter = null;
          });
          return coffeShopAppRoute;
        }),
      ],
      child: CoffeShopApp(),
    ),
  );
}
