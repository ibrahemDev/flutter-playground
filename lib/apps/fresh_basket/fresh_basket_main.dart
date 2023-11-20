import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/fresh_basket/main/fresh_basket_app.dart';
import 'package:flutter_playground/features/shared_prefs_storage/shared_prefs_storage_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FreshBasketMainWidget extends StatelessWidget {
  static const String routeName = '/FreshBasketApp';
  const FreshBasketMainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      //parent: freshBasketMainContainer,
      overrides: [
        sharedPrefsStorageRepositoryPrefixProvider.overrideWith((ref) => 'FreshBasketApp_'),
      ],
      child: const FreshBasketApp(),
    );
  }
}
