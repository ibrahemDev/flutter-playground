import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/fresh_basket/features/home_page_view/current_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final initalCurrentPageProvider = Provider<int>((ref) {
  return 0;
});

final homePageControlerProvider = AutoDisposeProvider<PageController>((ref) {
  final initalCurrentPage = ref.read(initalCurrentPageProvider);

  final pageController = PageController(
    initialPage: initalCurrentPage,
  );
  ref.onDispose(() {
    pageController.dispose();
  });
  return pageController;
}, dependencies: [initalCurrentPageProvider]);

final currentPageNotifier = StateNotifierProvider.autoDispose<CurrentPageNotifier, int>((ref) {
  final initalCurrentPage = ref.read(initalCurrentPageProvider);
  return CurrentPageNotifier(initalCurrentPage: initalCurrentPage);
}, dependencies: [initalCurrentPageProvider]);
