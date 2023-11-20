import 'package:flutter_playground/features/shared_prefs_storage/repositories/shared_prefs_storage_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final prefProvider = Provider<SharedPreferences>((ref) => throw UnimplementedError());
final sharedPrefsStorageRepositoryPrefixProvider = Provider<String>((ref) => throw UnimplementedError());

final sharedPrefsStorageRepository = Provider<SharedPrefsStorageRepository>(
  (ref) {
    return SharedPrefsStorageRepository(ref.watch(prefProvider), prefix: ref.watch(sharedPrefsStorageRepositoryPrefixProvider));
  },
  dependencies: [sharedPrefsStorageRepositoryPrefixProvider],
);
