import 'package:flutter_playground/apps/car_booking/features/categories/models/categorie_response_model.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentSelectedCategorieNotifier extends StateNotifier<int> {
  static final currentSelectedCategorieNotifierProvider = StateNotifierProvider<CurrentSelectedCategorieNotifier, int>(
    (ref) {
      return throw UnimplementedError();
    },
  );
  CurrentSelectedCategorieNotifier() : super(1);

  void updateSelected(CategoryResponseModel category) {
    state = category.id;
  }
}
