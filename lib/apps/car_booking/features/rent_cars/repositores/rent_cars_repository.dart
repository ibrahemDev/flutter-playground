import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_response_model.dart';
import 'package:flutter_playground/apps/car_booking/util/random_lat_long.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';

const overviewText =
    "Lorem ipsum dolor sit amet consectetur. Fermentum morbi proin sed tortor augue sed neque. Id praesent sit posuere diam orci vivamus sapien velit neque. Sollicitudin ut convallis amet eget. Gravida egestas at turpis faucibus gravida Lorem ipsum dolor sit amet consectetur. Fermentum morbi proin sed tortor augue sed neque. Id praesent sit posuere diam orci vivamus sapien velit neque. Sollicitudin ut convallis amet eget. Gravida egestas at turpis faucibus gravida ";

class RentCarsRepository {
  static final rentCarsRepositoryProvider = Provider<RentCarsRepository>((ref) => throw UnimplementedError());
  Future<List<RentCarResponseModel>> getAllRents() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      RentCarResponseModel(
        id: 1,
        categoryIds: [1, 7],
        displayName: "Audi R18",
        img: "assest/apps/car_booking/images/cars/audi.png",
        overview: overviewText,
        pricePerDay: 310,
        rating: 4.5,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 2,
        categoryIds: [1, 7],
        displayName: "Audi Blue Mighty F5",
        img: "assest/apps/car_booking/images/cars/audi2.png",
        overview: overviewText,
        pricePerDay: 220,
        rating: 3.5,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 3,
        categoryIds: [1, 4],
        displayName: "Bugatti XLR8",
        img: "assest/apps/car_booking/images/cars/bugatti_XLR8.png",
        overview: overviewText,
        pricePerDay: 650,
        rating: 5.0,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 4,
        categoryIds: [1, 4],
        displayName: "Bugatti RealX",
        img: "assest/apps/car_booking/images/cars/bugatti_RealX.png",
        overview: overviewText,
        pricePerDay: 970,
        rating: 5.0,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 5,
        categoryIds: [1, 2],
        displayName: "Lamborghini E21",
        img: "assest/apps/car_booking/images/cars/lamborghini_E21.png",
        overview: overviewText,
        pricePerDay: 720,
        rating: 4.8,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 6,
        categoryIds: [1, 2],
        displayName: "Lamborghini G5",
        img: "assest/apps/car_booking/images/cars/lamborghini_G5.png",
        overview: overviewText,
        pricePerDay: 1050,
        rating: 5.0,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 7,
        categoryIds: [1, 6],
        displayName: "Benz Thunder R",
        img: "assest/apps/car_booking/images/cars/benz_thunder_R.png",
        overview: overviewText,
        pricePerDay: 520,
        rating: 4.9,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 8,
        categoryIds: [1, 6],
        displayName: "Mercedes Benz",
        img: "assest/apps/car_booking/images/cars/mercedes_benz.png",
        overview: overviewText,
        pricePerDay: 570,
        rating: 5.0,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 9,
        categoryIds: [1, 5],
        displayName: "Tesla White Angel",
        img: "assest/apps/car_booking/images/cars/tesla_white_angel.png",
        overview: overviewText,
        pricePerDay: 150,
        rating: 3.0,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 10,
        categoryIds: [1, 5],
        displayName: "Tesla Dark Demon",
        img: "assest/apps/car_booking/images/cars/tesla_dark_demon.png",
        overview: overviewText,
        pricePerDay: 250,
        rating: 3.9,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 11,
        categoryIds: [1, 3],
        displayName: "Porsche Fazzer F1",
        img: "assest/apps/car_booking/images/cars/porsche_fazzer_F1.png",
        overview: overviewText,
        pricePerDay: 750,
        rating: 3.9,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
      RentCarResponseModel(
        id: 12,
        categoryIds: [1, 3],
        displayName: "Porsche Beast",
        img: "assest/apps/car_booking/images/cars/porsche_beast.png",
        overview: overviewText,
        pricePerDay: 1570,
        rating: 4.9,
        location: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
      ),
    ];
  }
}
