import 'package:flutter_playground/apps/car_booking/features/categories/models/categorie_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesRepository {
  static final categoriesRepositoryProvider = Provider<CategoriesRepository>((ref) => throw UnimplementedError());
  Future<List<CategoryResponseModel>> getAllCategories() async {
    await Future.delayed(const Duration(seconds: 2));
    return const [
      CategoryResponseModel(id: 1, category: "all", displayName: "All"),
      CategoryResponseModel(id: 2, category: "lambo", displayName: "Lambo", img: "assest/apps/car_booking/images/cars_logo/lambo.svg"),
      CategoryResponseModel(id: 3, category: "porsche", displayName: "Porsche", img: "assest/apps/car_booking/images/cars_logo/porsche.svg"),
      CategoryResponseModel(id: 4, category: "bugatti", displayName: "Bugatti", img: "assest/apps/car_booking/images/cars_logo/bugatti.svg"),
      CategoryResponseModel(id: 5, category: "tesla", displayName: "Tesla", img: "assest/apps/car_booking/images/cars_logo/tesla.svg"),
      CategoryResponseModel(id: 6, category: "benz", displayName: "Benz", img: "assest/apps/car_booking/images/cars_logo/benz.svg"),
      CategoryResponseModel(id: 7, category: "audi", displayName: "Audi", img: "assest/apps/car_booking/images/cars_logo/audi.svg"),
    ];
  }
}
