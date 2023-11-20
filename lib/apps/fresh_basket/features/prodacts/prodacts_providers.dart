import 'dart:developer';

import 'package:flutter_playground/apps/fresh_basket/features/prodacts/models/prodact_model.dart';

import 'package:flutter_playground/apps/fresh_basket/features/prodacts/repositores/prodact_repository.dart';
import 'package:flutter_playground/apps/fresh_basket/features/prodacts/services/prodact_service.dart';
import 'package:flutter_playground/apps/fresh_basket/features/prodacts/states/prodacts_notifier.dart';
import 'package:flutter_playground/features/shared_prefs_storage/shared_prefs_storage_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// prodact Repository Provider
final prodactRepositoryProvider = Provider((ref) => ProdactRepository());
// Search Text state
final searchTextProdactsProvider = StateProvider<String>((ref) => '');
// prodact Service Provider
final prodactServiceProvider = Provider(
  (ref) => ProdactService(prodactRepository: ref.read(prodactRepositoryProvider), sharedPrefsStorageRepository: ref.read(sharedPrefsStorageRepository)),
  dependencies: [
    prodactRepositoryProvider,
    sharedPrefsStorageRepository,
  ],
);
// All Prodact
final prodactsNotifierProvider = StateNotifierProvider<ProdactsNotifier, AsyncValue<List<ProdactModel>>>(
  (ref) {
    ref.onDispose(
      () {
        log("prodactsNotifierProvider Dispose");
      },
    );
    return ProdactsNotifier(ref.read(prodactServiceProvider));
  },
  dependencies: [prodactServiceProvider],
);

//Searched Prodacts Provider
final searchedProdactsProvider = Provider<AsyncValue<List<ProdactModel>>>(
  (ref) {
    final prodacts = ref.watch(prodactsNotifierProvider);
    final s = ref.watch(searchTextProdactsProvider);
    if (s.isEmpty) {
      return prodacts;
    }

    if (prodacts.hasError) {
      return prodacts;
    }

    if (prodacts.hasValue) {
      final s = ref.watch(searchTextProdactsProvider);
      return AsyncValue.data(
        prodacts.value!
            .where(
              (element) => element.displayName.toLowerCase().contains(s.toLowerCase()),
            )
            .toList(),
      );
    } else {
      return const AsyncValue.loading();
    }
  },
  dependencies: [prodactsNotifierProvider, searchTextProdactsProvider],
);
final favouritesProdactsProvider = Provider<AsyncValue<List<ProdactModel>>>(
  (ref) {
    final prodacts = ref.watch(prodactsNotifierProvider);
    if (prodacts.hasError) {
      return prodacts;
    }
    if (prodacts.hasValue) {
      return AsyncValue.data(prodacts.value!.where((element) => element.liked).toList());
    } else {
      return const AsyncValue.loading();
    }
  },
  dependencies: [prodactsNotifierProvider],
);
final prodactsByCategoryProvider = ProviderFamily<AsyncValue<List<ProdactModel>>, String>(
  (ref, arg) {
    final prodacts = ref.watch(prodactsNotifierProvider);
    if (prodacts.hasError) {
      return prodacts;
    }
    if (prodacts.hasValue) {
      return AsyncValue.data(prodacts.value!.where((element) => element.categorie == arg).toList());
    } else {
      return const AsyncValue.loading();
    }
  },
  dependencies: [prodactsNotifierProvider],
);
