// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'fresh_basket_app_route.dart';

/// generated route for
/// [FreshBasketHomeScreen]
class FreshBasketHomeRoute extends PageRouteInfo<void> {
  const FreshBasketHomeRoute({List<PageRouteInfo>? children})
      : super(
          FreshBasketHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'FreshBasketHomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FreshBasketHomeScreen();
    },
  );
}

/// generated route for
/// [FreshBasketSplashScreen]
class FreshBasketSplashRoute extends PageRouteInfo<void> {
  const FreshBasketSplashRoute({List<PageRouteInfo>? children})
      : super(
          FreshBasketSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'FreshBasketSplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FreshBasketSplashScreen();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [ProdactCategoryScreen]
class ProdactCategoryRoute extends PageRouteInfo<ProdactCategoryRouteArgs> {
  ProdactCategoryRoute({
    Key? key,
    required CategoryModel categoryModel,
    List<PageRouteInfo>? children,
  }) : super(
          ProdactCategoryRoute.name,
          args: ProdactCategoryRouteArgs(
            key: key,
            categoryModel: categoryModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ProdactCategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProdactCategoryRouteArgs>();
      return ProdactCategoryScreen(
        key: args.key,
        categoryModel: args.categoryModel,
      );
    },
  );
}

class ProdactCategoryRouteArgs {
  const ProdactCategoryRouteArgs({
    this.key,
    required this.categoryModel,
  });

  final Key? key;

  final CategoryModel categoryModel;

  @override
  String toString() {
    return 'ProdactCategoryRouteArgs{key: $key, categoryModel: $categoryModel}';
  }
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterScreen();
    },
  );
}
