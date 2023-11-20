import 'package:flutter_playground/apps/fresh_basket/features/prodacts/models/prodact_model.dart';

import 'package:flutter_playground/apps/fresh_basket/features/prodacts/services/prodact_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProdactsNotifier extends StateNotifier<AsyncValue<List<ProdactModel>>> {
  final ProdactService prodactService;
  ProdactsNotifier(this.prodactService) : super(const AsyncLoading()) {
    load();
  }

  Future<void> load() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => prodactService.getAllProdact());
  }

  void resetOrderCount(ProdactModel p) {
    int index = state.value!.indexWhere((element) => element == p);
    if (index == -1) return;
    final cache = state.value!;
    final cacheProdact = cache[index];
    cache[index] = cacheProdact.copyWith(orderCount: 0);
    state = AsyncValue.data([...cache]);
  }

  void incrementProdactOrderCount(ProdactModel p) {
    int index = state.value!.indexWhere((element) => element == p);
    if (index == -1) return;
    final cache = state.value!;
    final cacheProdact = cache[index];
    cache[index] = cacheProdact.copyWith(orderCount: cacheProdact.orderCount + 1);
    state = AsyncValue.data([...cache]);
  }

  void decrementProdactOrderCount(ProdactModel p) {
    int index = state.value!.indexWhere((element) => element == p);
    if (index == -1) return;
    final cache = state.value!;
    final cacheProdact = cache[index];
    cache[index] = cacheProdact.copyWith(orderCount: cacheProdact.orderCount == 0 ? 0 : cacheProdact.orderCount - 1);
    state = AsyncValue.data([...cache]);
  }

  Future<bool> addLikeProdact(ProdactModel p) async {
    // check if prodact is in state list
    int index = state.value!.indexWhere((element) => element == p);
    if (index == -1) {
      return false;
    }
    bool r = await prodactService.addLikeProdact(p.id);

    if (!r) {
      return false;
    }
    final cache = state.value!;
    cache[index] = cache[index].copyWith(liked: true);

    state = AsyncValue.data([...cache]);
    return true;
  }

  Future<bool> removeLikeProdact(ProdactModel p) async {
    // check if prodact is in state list
    int index = state.value!.indexWhere((element) => element == p);
    if (index == -1) {
      return false;
    }

    bool r = await prodactService.removeLikeProdact(p.id);

    if (!r) {
      return false;
    }
    final cache = state.value!;
    cache[index] = cache[index].copyWith(liked: false);

    state = AsyncValue.data([...cache]);
    return true;
  }
}
