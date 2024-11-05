import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final platformBrightnessProvider = Provider<Brightness>((ref) {
  final binding = WidgetsBinding.instance;
  ref.state = binding.platformDispatcher.platformBrightness;

  final observer = _PlatformBrightnessObserver((brightness) {
    if (ref.state != brightness) ref.state = brightness;
  });

  binding.addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));
  return ref.state;
});

class _PlatformBrightnessObserver extends WidgetsBindingObserver {
  _PlatformBrightnessObserver(this._didChangeBrightness);
  final void Function(Brightness brightness) _didChangeBrightness;
  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();

    _didChangeBrightness(WidgetsBinding.instance.platformDispatcher.platformBrightness);
  }
}
