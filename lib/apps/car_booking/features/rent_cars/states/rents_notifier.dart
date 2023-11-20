import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_response_model.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_view_model.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/services/rent_cars_service.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/favourites_Rents_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RentsNotifier extends StateNotifier<AsyncValue<List<RentCarResponseModel>>> {
  static final rentsNotifierProvider = StateNotifierProvider<RentsNotifier, AsyncValue<List<RentCarResponseModel>>>(
    (ref) {
      return throw UnimplementedError();
    },
    dependencies: [RentCarsService.rentCarsServiceProvider],
  );

  static final rentsViewModleListNotifierProvider = Provider<AsyncValue<List<RentCarViewModel>>>(
    (ref) {
      return throw UnimplementedError();
    },
    dependencies: [RentsNotifier.rentsNotifierProvider, FavouritesRentsNotifier.favouritesRentsIdsNotifierProvider],
  );
  final RentCarsService rentCarsService;
  RentsNotifier(this.rentCarsService) : super(const AsyncLoading()) {
    load();
  }

  Future<void> load() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final rentCars = await rentCarsService.getAllRents();

      return rentCars;
    });
  }
}
