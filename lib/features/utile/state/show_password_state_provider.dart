import 'package:flutter_riverpod/flutter_riverpod.dart';

final showPasswordStateProvider = StateProvider<bool>(
  (ref) {
    return false;
  },
);
