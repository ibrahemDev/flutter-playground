import 'package:flutter_playground/features/shared_prefs_storage/providers/shared_preferences_repository_provider.dart';
import 'package:flutter_playground/features/theme_mode/services/theme_mode_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeModeService = Provider<ThemeModeService>(
  (ref) => ThemeModeService(sharedPrefsStorageRepository: ref.watch(sharedPrefsStorageRepository)),
);
