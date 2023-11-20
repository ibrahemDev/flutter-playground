import 'package:flutter_playground/apps/car_booking/features/categories/states/current_selected_categorie_notifier.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/repositores/rent_cars_repository.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/services/rent_cars_service.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/favourites_Rents_notifier.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/rents_by_category.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/rents_notifier.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/selected_rent.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RentCarsProvider {
  static List<Override> overrideAllProviders() {
    //CategorieService
    return [
      /// Repository
      RentCarsRepository.rentCarsRepositoryProvider.overrideWith((ref) => RentCarsRepository()),

      /// Services
      RentCarsService.rentCarsServiceProvider.overrideWith((ref) => RentCarsService(rentCarsRepository: ref.read(RentCarsRepository.rentCarsRepositoryProvider))),

      /// ids of favourites Rents
      FavouritesRentsNotifier.favouritesRentsIdsNotifierProvider.overrideWith((ref) => FavouritesRentsNotifier()),

      /// Current Selected Rent Id need on map
      selectedRentIdStateProvider.overrideWith((ref) => -1),

      ///  list of rents as RentCarResponseModel
      RentsNotifier.rentsNotifierProvider.overrideWith((ref) {
        return RentsNotifier(ref.read(RentCarsService.rentCarsServiceProvider));
      }),

      ///  list of rents as RentCarViewModel
      RentsNotifier.rentsViewModleListNotifierProvider.overrideWith(
        (ref) {
          final allRentsResAsyncValue = ref.watch(RentsNotifier.rentsNotifierProvider);
          final favouritesRentsIds = ref.watch(FavouritesRentsNotifier.favouritesRentsIdsNotifierProvider);

          if (allRentsResAsyncValue.hasError) {
            return AsyncValue.error(allRentsResAsyncValue.error!, allRentsResAsyncValue.stackTrace!);
          }

          if (allRentsResAsyncValue.hasValue) {
            final allRents = allRentsResAsyncValue.value!.map((e) {
              return e.toRentCarViewModel(favouritesRentsIds.contains(e.id));
            }).toList();

            return AsyncValue.data(allRents);
          } else {
            return const AsyncValue.loading();
          }
        },
      ),

      /// Current Selected Rent model need on map
      selectedRentStateProvider.overrideWith((ref) {
        final selectedId = ref.watch(selectedRentIdStateProvider);
        final rentsViewModleList = ref.watch(RentsNotifier.rentsViewModleListNotifierProvider);
        if (rentsViewModleList.hasError) {
          return AsyncValue.error(rentsViewModleList.error!, rentsViewModleList.stackTrace!);
        }

        if (rentsViewModleList.hasValue) {
          final index = rentsViewModleList.value!.indexWhere((element) => element.id == selectedId);
          if (index == -1) {
            return AsyncData(null);
          }
          return AsyncData(rentsViewModleList.value![index]);
        } else {
          return const AsyncValue.loading();
        }
      }),

      /// list of rents order by catigory as RentCarViewModel
      rentsByCurrentCategoryProvider.overrideWith((ref) {
        final allRents = ref.watch(RentsNotifier.rentsViewModleListNotifierProvider);
        final currentSelectedCategorie = ref.watch(CurrentSelectedCategorieNotifier.currentSelectedCategorieNotifierProvider);

        if (allRents.hasError) {
          return allRents;
        }
        if (allRents.hasValue) {
          return AsyncValue.data(allRents.value!.where((element) => element.categoryIds.contains(currentSelectedCategorie)).toList());
        } else {
          return const AsyncValue.loading();
        }
      }),

      /// list of All saved rent Modle
      FavouritesRentsNotifier.favouritesRentsNotifierProvider.overrideWith((ref) {
        final rentsAsyncValue = ref.watch(RentsNotifier.rentsViewModleListNotifierProvider);

        if (rentsAsyncValue.hasError) {
          return rentsAsyncValue;
        }
        if (rentsAsyncValue.hasValue) {
          return AsyncValue.data(rentsAsyncValue.value!.where((element) => element.isSaved).toList());
        } else {
          return const AsyncValue.loading();
        }
      })
    ];
  }
}
