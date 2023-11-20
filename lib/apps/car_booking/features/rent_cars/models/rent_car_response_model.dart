import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'rent_car_response_model.freezed.dart';

@freezed
class RentCarResponseModel with _$RentCarResponseModel {
  const RentCarResponseModel._();
  const factory RentCarResponseModel({
    required int id,
    required String displayName,
    required double pricePerDay,
    required List<int> categoryIds,
    required String overview,
    required double rating,
    required String img,
    required LatLng location,
  }) = _RentCarResponseModel;

  RentCarViewModel toRentCarViewModel(bool isSaved) {
    return RentCarViewModel(
      id: id,
      displayName: displayName,
      pricePerDay: pricePerDay,
      categoryIds: categoryIds,
      overview: overview,
      rating: rating,
      img: img,
      location: location,
      isSaved: isSaved,
    );
  }
}
