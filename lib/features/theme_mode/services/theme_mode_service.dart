import 'package:flutter/material.dart';

import 'package:flutter_playground/features/theme_mode/repositories/theme_mode_repository.dart';

class ThemeModeService {
  final ThemeModeRepository themeModeRepository;

  ThemeModeService({required this.themeModeRepository});

  Future<void> init() async {}
  ThemeMode getThemeMode() {
    int? themeModeIndex = themeModeRepository.getThemeMode();
    if (themeModeIndex == null) {
      return ThemeMode.system;
    }
    return ThemeMode.values[themeModeIndex];
  }

  Future<bool> setThemeMode(ThemeMode mode) async {
    return await themeModeRepository.setThemeMode(mode.index);
  }
}
