import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/features/shared_prefs_storage/shared_prefs_storage_providers.dart';
import 'package:flutter_playground/main/FlutterPlaygroundApp.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// store here main state and repositories and services
final ProviderContainer mainContainer = ProviderContainer();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final pref = await SharedPreferences.getInstance();
  //await SharedPrefsStorage.loader(mainContainer, prefix: '');

  //setupLocator();
  //mainContainer.updateOverrides([]);
  //WidgetsBinding.instance.handlePlatformBrightnessChanged
  runApp(
    DevicePreview(
      enabled: true,
      builder: (BuildContext context) {
        return ProviderScope(
          parent: mainContainer,
          overrides: [
            prefProvider.overrideWith((ref) => pref),
            sharedPrefsStorageRepositoryPrefixProvider.overrideWith((ref) => ''),
          ],
          child: FlutterPlaygroundApp(),
        );
      },
    ),
  );
}
