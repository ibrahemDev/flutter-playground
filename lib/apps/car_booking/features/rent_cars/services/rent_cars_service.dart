import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_response_model.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/repositores/rent_cars_repository.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class RentCarsService {
  static final rentCarsServiceProvider = Provider<RentCarsService>((ref) => throw UnimplementedError(), dependencies: [RentCarsRepository.rentCarsRepositoryProvider]);

  final RentCarsRepository rentCarsRepository;
  RentCarsService({required this.rentCarsRepository});

  Future<List<RentCarResponseModel>> getAllRents() async {
    return rentCarsRepository.getAllRents();
  }
}
