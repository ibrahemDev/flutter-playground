import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/features/shared_prefs_storage/providers/shared_preferences_provider.dart';
import 'package:flutter_playground/FlutterPlaygroundApp.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

// store here main state and repositories and services
final ProviderContainer providerContainer = ProviderContainer();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //final brightness = PlatformDispatcher.instance.platformBrightness;
  await providerContainer.read(prefAsyncInitProvider).init();

  runApp(
    DevicePreview(
      enabled: false,
      builder: (BuildContext context) {
        return ProviderScope(
          parent: providerContainer,
          child: FlutterPlaygroundApp(),
        );
      },
    ),
  );
}
