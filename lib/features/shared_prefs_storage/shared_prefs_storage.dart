//import 'package:flutter_playground/features/shared_prefs_storage/shared_prefs_storage_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsStorage {
  static Future<void> loader(ProviderContainer container, {String prefix = ''}) async {
    //final pref = await SharedPreferences.getInstance();
    //theNumberProvider.overrideWith(() => FakeNumber()),
    /*container.updateOverrides([
      prefProvider.overrideWith((ref) => pref),
      sharedPrefsStorageRepositoryPrefixProvider.overrideWith((ref) => prefix),
    ]);
    container.refresh(prefProvider);
    container.refresh(sharedPrefsStorageRepositoryPrefixProvider);*/
  }

  /*static setupLocator(GetIt getIt, {String prefix = ''}) {
    if (!GetIt.I.isRegistered<SharedPreferences>(instance: GetIt.I)) {
      GetIt.I.registerSingletonAsync<SharedPreferences>(() async {
        return await SharedPreferences.getInstance();
      });
    }
    getIt.registerLazySingletonAsync<SharedPrefsStorageRepository>(() async {
      final pref = GetIt.I.get<SharedPreferences>();

      return SharedPrefsStorageRepository(pref, prefix: prefix);
    });
    //getIt.registerLazySingleton<SharedPrefsStorageRepository>(() => SharedPrefsStorageRepository(prefix: prefix));
  }*/
}
