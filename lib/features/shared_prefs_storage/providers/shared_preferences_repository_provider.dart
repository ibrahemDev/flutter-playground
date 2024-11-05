import 'package:flutter_playground/features/shared_prefs_storage/providers/prefix_provider.dart';
import 'package:flutter_playground/features/shared_prefs_storage/providers/shared_preferences_provider.dart';
import 'package:flutter_playground/features/shared_prefs_storage/repositories/shared_prefs_storage_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sharedPrefsStorageRepository = Provider<SharedPrefsStorageRepository>(
  (ref) {
    return SharedPrefsStorageRepository(ref.watch(prefProvider), prefix: ref.watch(sharedPrefsStorageRepositoryPrefixProvider));
  },
  dependencies: [sharedPrefsStorageRepositoryPrefixProvider],
);
