import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final prefAsyncInitProvider = Provider<PrefAsyncInitProvider>((ref) => PrefAsyncInitProvider(ref: ref));
final prefProvider = Provider<SharedPreferences>((ref) => ref.read(prefAsyncInitProvider).sharedPreferences);

class PrefAsyncInitProvider {
  final Ref ref;
  late final SharedPreferences sharedPreferences;

  PrefAsyncInitProvider({required this.ref});

  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    /*await Future.wait([
      SharedPreferences.getInstance().then((value) {
        sharedPreferences = value;
      }),
    ]);*/
  }
}
