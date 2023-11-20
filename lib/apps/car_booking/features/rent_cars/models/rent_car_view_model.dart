import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'rent_car_view_model.freezed.dart';

@freezed
class RentCarViewModel with _$RentCarViewModel {
  const RentCarViewModel._();
  const factory RentCarViewModel({
    required int id,
    required String displayName,
    required double pricePerDay,
    required List<int> categoryIds,
    required String overview,
    required double rating,
    required String img,
    required LatLng location,
    required bool isSaved,
  }) = _RentCarViewModel;
}
