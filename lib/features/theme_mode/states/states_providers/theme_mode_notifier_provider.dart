import 'package:flutter/material.dart';
import 'package:flutter_playground/features/theme_mode/providers/theme_mode_service_provider.dart';
import 'package:flutter_playground/features/theme_mode/states/theme_mode_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeModeNotifier = StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) {
    final themeModeService0 = ref.watch(themeModeService);
    return ThemeModeNotifier(themeModeService: themeModeService0, currentThemeMode: themeModeService0.getThemeMode());
  },
);
