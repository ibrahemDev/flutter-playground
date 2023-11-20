import 'package:flutter_playground/apps/car_booking/features/categories/models/categorie_response_model.dart';
import 'package:flutter_playground/apps/car_booking/features/categories/repositores/categorie_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategorieService {
  static final categoriesServiceProvider = Provider<CategorieService>((ref) => throw UnimplementedError(), dependencies: [CategoriesRepository.categoriesRepositoryProvider]);

  final CategoriesRepository categoriesRepository;
  CategorieService({required this.categoriesRepository});

  Future<List<CategoryResponseModel>> getAllCategories() async {
    return categoriesRepository.getAllCategories();
  }
}
