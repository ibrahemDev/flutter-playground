import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/apps/car_booking/car_booking_app_manifest.dart';
import 'package:flutter_playground/apps/car_booking/features/categories/categories_provider.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/rent_cars_provider.dart';
import 'package:flutter_playground/apps/car_booking/main/car_booking_app.dart';
import 'package:flutter_playground/apps/car_booking/routes/car_booking_app_route.dart';
import 'package:flutter_playground/features/page_view/page_view_providers.dart';
import 'package:flutter_playground/features/shared_prefs_storage/providers/prefix_provider.dart';
import 'package:flutter_playground/features/virtual_apps/services/run_virtual_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

RootStackRouter? getCarBookingRouter() {
  //final carBookingAppRoute = CarBookingAppRoute();
  //CarBookingAppRoute.currentRouter = carBookingAppRoute;
  return CarBookingAppRoute.currentRouter;
}

//carBookingRouterFactory,freshBasketRouterFactory
Future<void> mainCarBooking() async {
  final carBookingAppRouter = CarBookingAppRoute();
  //final RootStackRouter? Function() getVirtualAppRouter = () {
  //  return carBookingRouterFactory();
  //}; getVirtualAppRouter,
  runVirtualApp(
    carBookingAppManifest,
    ProviderScope(
      overrides: [
        sharedPrefsStorageRepositoryPrefixProvider.overrideWith((ref) => 'CarBookingApp_'),
        ...CategoriesProvider.overrideAllProviders(),
        ...RentCarsProvider.overrideAllProviders(),
        currentPageStateProvider.overrideWith((ref) {
          final initalCurrentPage = ref.read(initalCurrentPageProvider);
          return initalCurrentPage;
        }),
        carBookingAppRouterProvider.overrideWith((ref) {
          CarBookingAppRoute.currentRouter = carBookingAppRouter;
          ref.onDispose(() {
            CarBookingAppRoute.currentRouter?.dispose();
            CarBookingAppRoute.currentRouter = null;
          });
          return carBookingAppRouter;
        }),
      ],
      child: CarBookingApp(),
    ),
  );
}
