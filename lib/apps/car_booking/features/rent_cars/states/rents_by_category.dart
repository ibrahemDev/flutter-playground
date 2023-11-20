import 'package:flutter_playground/apps/car_booking/features/categories/states/categories_notifier.dart';
import 'package:flutter_playground/apps/car_booking/features/categories/states/current_selected_categorie_notifier.dart';

import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_view_model.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/rents_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rentsByCurrentCategoryProvider = Provider<AsyncValue<List<RentCarViewModel>>>(
  (ref) {
    return throw UnimplementedError();
  },
  dependencies: [
    /// to get list of all rents
    RentsNotifier.rentsNotifierProvider,

    /// to get list of all categories
    CategoriesNotifier.categoriesNotifierProvider,

    /// to filter it by ids
    CurrentSelectedCategorieNotifier.currentSelectedCategorieNotifierProvider,
  ],
);
