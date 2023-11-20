import 'package:flutter_playground/apps/car_booking/features/categories/models/categorie_response_model.dart';
import 'package:flutter_playground/apps/car_booking/features/categories/services/categorie_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesNotifier extends StateNotifier<AsyncValue<List<CategoryResponseModel>>> {
  static final categoriesNotifierProvider = StateNotifierProvider<CategoriesNotifier, AsyncValue<List<CategoryResponseModel>>>(
    (ref) {
      return throw UnimplementedError();
    },
    dependencies: [CategorieService.categoriesServiceProvider],
  );
  final CategorieService categorieService;
  CategoriesNotifier(this.categorieService) : super(const AsyncLoading()) {
    load();
  }

  Future<void> load() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => categorieService.getAllCategories());
  }
}
