import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_view_model.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/rents_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouritesRentsNotifier extends StateNotifier<List<int>> {
  static final favouritesRentsIdsNotifierProvider = StateNotifierProvider<FavouritesRentsNotifier, List<int>>(
    (ref) {
      return throw UnimplementedError();
    },
    dependencies: [],
  );
  static final favouritesRentsNotifierProvider = Provider<AsyncValue<List<RentCarViewModel>>>(
    (ref) {
      return throw UnimplementedError();
    },
    dependencies: [
      RentsNotifier.rentsViewModleListNotifierProvider,
    ],
  );

  FavouritesRentsNotifier() : super([]);

  Future<void> load() async {}
}
