import 'package:flutter_playground/apps/fresh_basket/features/prodacts/models/prodact_model.dart';
import 'package:flutter_playground/apps/fresh_basket/features/prodacts/prodacts_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// list of All Prodact in cart
final allProdactsInCartProvider = Provider<AsyncValue<List<ProdactModel>>>(
  (ref) {
    final prodacts = ref.watch(prodactsNotifierProvider);
    if (prodacts.hasError) {
      return prodacts;
    }
    if (prodacts.hasValue) {
      return AsyncValue.data(prodacts.value!.where((element) => element.orderCount > 0).toList());
    } else {
      return const AsyncValue.loading();
    }
  },
  dependencies: [prodactsNotifierProvider],
);

/// 4 prodact not in cart
final fourProdactNotInCartProvider = Provider<AsyncValue<List<ProdactModel>>>(
  (ref) {
    final prodacts = ref.watch(prodactsNotifierProvider);
    if (prodacts.hasError) {
      return prodacts;
    }
    if (prodacts.hasValue) {
      return AsyncValue.data(prodacts.value!.where((element) => element.orderCount == 0).take(4).toList());
    } else {
      return const AsyncValue.loading();
    }
  },
  dependencies: [prodactsNotifierProvider],
);

/// count length
final fourProdactNotInCartLengthProvider = Provider<int>(
  (ref) {
    final prodacts = ref.watch(fourProdactNotInCartProvider);
    if (prodacts.hasError) {
      return 0;
    }
    if (prodacts.hasValue) {
      return prodacts.value!.length;
    } else {
      return 0;
    }
  },
  dependencies: [fourProdactNotInCartProvider],
);
final subTotalPriceProvider = Provider<double>((ref) {
  final prodacts = ref.watch(allProdactsInCartProvider);
  if (prodacts.hasError) {
    return 0;
  }
  if (prodacts.hasValue) {
    if (prodacts.value!.isEmpty) {
      return 0;
    }
    return prodacts.value!.map((e) => e.price * e.orderCount).reduce((value, element) => value + element);
  } else {
    return 0;
  }
}, dependencies: [allProdactsInCartProvider]);

final deliveryFeeProvider = Provider<double>(
  (ref) {
    return ref.watch(subTotalPriceProvider) > 0 ? 32 : 0;
  },
  dependencies: [subTotalPriceProvider],
);
final taxAndOtherFeeProvider = Provider<double>(
  (ref) {
    return ref.watch(subTotalPriceProvider) > 0 ? 18 : 0;
  },
  dependencies: [subTotalPriceProvider],
);

final totalCartPriceProvider = Provider<double>(
  (ref) {
    final a1 = ref.watch(deliveryFeeProvider);
    final a2 = ref.watch(taxAndOtherFeeProvider);
    final a3 = ref.watch(subTotalPriceProvider);

    return a1 + a2 + a3;
  },
  dependencies: [deliveryFeeProvider, taxAndOtherFeeProvider, subTotalPriceProvider],
);
