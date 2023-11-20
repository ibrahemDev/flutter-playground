import 'package:flutter/material.dart';

import 'package:flutter_playground/apps/fresh_basket/features/prodacts/prodacts_providers.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/widgets/prodact_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouritePageWidget extends ConsumerWidget {
  const FavouritePageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(favouritesProdactsProvider).when(
      data: (prodacts) {
        if (prodacts.isEmpty) {
          return const Center(
            child: Text("Empty"),
          );
        }
        final prodactNotifier = ref.read(prodactsNotifierProvider.notifier);
        return GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 33),
          itemCount: prodacts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
            mainAxisExtent: 210,
          ),
          itemBuilder: (context, index) {
            final prodact = prodacts[index];
            return ProdactWidget(
              prodact: prodact,
              prodactNotifier: prodactNotifier,
            );
          },
        );
      },
      error: (error, stackTrace) {
        return const Text("Error");
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
