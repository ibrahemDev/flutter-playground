import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/apps/fresh_basket/fresh_basket_app_manifest.dart';
import 'package:flutter_playground/apps/fresh_basket/main/fresh_basket_app.dart';
import 'package:flutter_playground/apps/fresh_basket/routes/fresh_basket_app_route.dart';
import 'package:flutter_playground/features/shared_prefs_storage/providers/prefix_provider.dart';
import 'package:flutter_playground/features/virtual_apps/services/run_virtual_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

RootStackRouter? getFreshBasketRouter() {
  //final freshBasketAppRouter = FreshBasketAppRouter();
  //FreshBasketAppRouter.currentRouter = freshBasketAppRouter;
  return FreshBasketAppRouter.currentRouter;
}

Future<void> mainFreshBasket() async {
  final freshBasketAppRouter = FreshBasketAppRouter();

  //final RootStackRouter? Function() getVirtualAppRouter = () {
  //  return FreshBasketAppRouter.currentRouter;
  //};getVirtualAppRouter,

  return runVirtualApp(
    freshBasketAppManifest,
    ProviderScope(
      overrides: [
        sharedPrefsStorageRepositoryPrefixProvider.overrideWith((ref) => 'FreshBasketApp'),
        freshBasketAppRouterProvider.overrideWith((ref) {
          FreshBasketAppRouter.currentRouter = freshBasketAppRouter;
          ref.onDispose(() {
            FreshBasketAppRouter.currentRouter?.dispose();
            FreshBasketAppRouter.currentRouter = null;
          });
          return freshBasketAppRouter;
        }),
      ],
      child: const FreshBasketApp(),
    ),
  );
}
