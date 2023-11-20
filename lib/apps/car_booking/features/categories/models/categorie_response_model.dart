import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorie_response_model.freezed.dart';

@freezed
class CategoryResponseModel with _$CategoryResponseModel {
  const CategoryResponseModel._();
  const factory CategoryResponseModel({
    required int id,
    required String displayName,
    required String category,
    String? img,
  }) = _CategoryResponseModel;
}
