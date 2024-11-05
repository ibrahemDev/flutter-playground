import 'package:flutter/material.dart';
import 'package:flutter_playground/features/shared_prefs_storage/repositories/shared_prefs_storage_repository.dart';

class ThemeModeService {
  final SharedPrefsStorageRepository sharedPrefsStorageRepository;
  //final ThemeModeRepository themeModeRepository;

  ThemeModeService({required this.sharedPrefsStorageRepository});

  Future<void> init() async {}
  ThemeMode getThemeMode() {
    int? themeModeIndex = sharedPrefsStorageRepository.getInt("themeMode");
    if (themeModeIndex == null) {
      return ThemeMode.system;
    }
    return ThemeMode.values[themeModeIndex];
  }

  Future<bool> setThemeMode(ThemeMode mode) async {
    return await sharedPrefsStorageRepository.setInt("themeMode", mode.index);
  }
}
