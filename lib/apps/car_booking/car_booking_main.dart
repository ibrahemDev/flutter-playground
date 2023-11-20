import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/features/categories/categories_provider.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/rent_cars_provider.dart';
import 'package:flutter_playground/apps/car_booking/main/car_booking_app.dart';
import 'package:flutter_playground/features/page_view/page_view_providers.dart';

import 'package:flutter_playground/features/shared_prefs_storage/shared_prefs_storage_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CarBookingMainWidget extends StatelessWidget {
  const CarBookingMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      //parent: freshBasketMainContainer,
      overrides: [
        sharedPrefsStorageRepositoryPrefixProvider.overrideWith((ref) => 'CarBookingApp_'),
        ...CategoriesProvider.overrideAllProviders(),
        ...RentCarsProvider.overrideAllProviders(),
        currentPageStateProvider.overrideWith((ref) {
          final initalCurrentPage = ref.read(initalCurrentPageProvider);
          return initalCurrentPage;
        }),
      ],
      child: CarBookingApp(),
    );
  }
}
