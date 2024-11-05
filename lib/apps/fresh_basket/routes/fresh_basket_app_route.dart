import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_playground/apps/fresh_basket/features/categories/models/categorie_model.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/screens/home/home_screen.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/screens/splash/splash_screen.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/screens/prodact_category/prodact_category_screen.route.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/screens/login/login_screen.route.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/screens/register/register_screen.route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
part 'fresh_basket_app_route.gr.dart';

final freshBasketAppRouterProvider = Provider<FreshBasketAppRouter>((ref) => throw UnimplementedError());

@AutoRouterConfig(
  generateForDir: ["lib/apps/fresh_basket"],
)
class FreshBasketAppRouter extends RootStackRouter {
  static FreshBasketAppRouter? currentRouter = null;
  @override
  RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: FreshBasketSplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: FreshBasketHomeRoute.page,
        ),
        AutoRoute(
          path: "/prodact/category",
          page: ProdactCategoryRoute.page,
        ),
        AutoRoute(
          path: "/login",
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: "/register",
          page: RegisterRoute.page,
        ),
      ];
}
