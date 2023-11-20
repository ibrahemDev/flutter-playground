import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrentPageNotifier extends StateNotifier<int> {
  final int initalCurrentPage;

  CurrentPageNotifier({this.initalCurrentPage = 0}) : super(initalCurrentPage);

  setCurrentPage(int num) {
    state = num;
  }
}

/*
class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  final ThemeModeService themeModeService;
  ThemeMode currentThemeMode;

  ThemeModeNotifier({required this.themeModeService, required this.currentThemeMode}) : super(currentThemeMode) {
    getCurrentTheme();
  }

  Future<bool> setDark() async {
    if (state != ThemeMode.dark) {
      state = ThemeMode.dark;
    }

    return await themeModeService.setThemeMode(ThemeMode.dark);
  }

  Future<bool> setLight() async {
    if (state != ThemeMode.light) {
      state = ThemeMode.light;
    }

    return await themeModeService.setThemeMode(ThemeMode.light);
  }

  Future<bool> setSystem() async {
    if (state != ThemeMode.system) {
      state = ThemeMode.system;
    }

    return await themeModeService.setThemeMode(ThemeMode.system);
  }

  void getCurrentTheme() async {
    final theme = await themeModeService.getThemeMode();
    state = theme;
  }
}
*/