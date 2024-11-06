import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/apps/coffe_shop/features/splash/splash_screen.route.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'coffe_shop_app_route.gr.dart';

final coffeShopAppRouterProvider = Provider<CoffeShopAppRoute>((ref) => throw UnimplementedError());

@AutoRouterConfig(
  generateForDir: ["lib/apps/coffe_shop"],
)
class CoffeShopAppRoute extends RootStackRouter {
  static CoffeShopAppRoute? currentRouter = null;
  @override
  RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: "/splash",
          page: SplashRoute.page,
          initial: true,
        ),
      ];
}
