import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initalCurrentPageProvider = Provider<int>(
  (ref) {
    return 0;
  },
);

final pageViewControlerProvider = AutoDisposeProvider<PageController>(
  (ref) {
    final initalCurrentPage = ref.read(initalCurrentPageProvider);

    final pageController = PageController(
      initialPage: initalCurrentPage,
    );
    ref.onDispose(() {
      pageController.dispose();
    });
    return pageController;
  },
  dependencies: [
    initalCurrentPageProvider,
  ],
);

final currentPageStateProvider = StateProvider<int>(
  (ref) {
    final initalCurrentPage = ref.read(initalCurrentPageProvider);
    return initalCurrentPage;
  },
  dependencies: [
    initalCurrentPageProvider,
  ],
);
