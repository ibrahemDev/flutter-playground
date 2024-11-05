import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appLifecycleProvider = Provider<AppLifecycleState>((ref) {
  final binding = WidgetsBinding.instance;
  ref.state = binding.lifecycleState!;

  final observer = _LifecycleObserver((lifecycle) {
    if (ref.state != lifecycle) ref.state = lifecycle;
  });

  binding.addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));
  return ref.state;
});

class _LifecycleObserver extends WidgetsBindingObserver {
  _LifecycleObserver(this._didChangeLifecycle);
  final void Function(AppLifecycleState lifecycle) _didChangeLifecycle;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    _didChangeLifecycle(state);

    /// for debuging
    /// switch (state) {
    ///   case AppLifecycleState.inactive:
    ///     print("App is inactive");
    ///     break;
    ///   case AppLifecycleState.paused:
    ///     print("App is in background");
    ///     break;
    ///   case AppLifecycleState.resumed:
    ///     print("App is in foreground");
    ///     break;
    ///   case AppLifecycleState.detached:
    ///     print("App is detached");
    ///     break;
    ///   case AppLifecycleState.hidden:
    ///     print("App is hidden");
    ///     break;
    /// }
  }
}
