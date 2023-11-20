import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_view_model.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/rents_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedRentIdStateProvider = StateProvider<int>((ref) {
  return throw UnimplementedError();
});
final selectedRentStateProvider = Provider<AsyncValue<RentCarViewModel?>>(
  (ref) {
    return throw UnimplementedError();
  },
  dependencies: [selectedRentIdStateProvider, RentsNotifier.rentsViewModleListNotifierProvider],
);
