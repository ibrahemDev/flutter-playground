import 'package:flutter_playground/apps/car_booking/features/categories/repositores/categorie_repository.dart';
import 'package:flutter_playground/apps/car_booking/features/categories/services/categorie_service.dart';
import 'package:flutter_playground/apps/car_booking/features/categories/states/categories_notifier.dart';
import 'package:flutter_playground/apps/car_booking/features/categories/states/current_selected_categorie_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesProvider {
  static List<Override> overrideAllProviders() {
    //,CategorieService
    return [
      CategoriesRepository.categoriesRepositoryProvider.overrideWith((ref) => CategoriesRepository()),
      CategorieService.categoriesServiceProvider.overrideWith((ref) => CategorieService(categoriesRepository: ref.read(CategoriesRepository.categoriesRepositoryProvider))),
      CategoriesNotifier.categoriesNotifierProvider.overrideWith((ref) => CategoriesNotifier(ref.read(CategorieService.categoriesServiceProvider))),
      CurrentSelectedCategorieNotifier.currentSelectedCategorieNotifierProvider.overrideWith((ref) => CurrentSelectedCategorieNotifier()),
    ];
  }
}
