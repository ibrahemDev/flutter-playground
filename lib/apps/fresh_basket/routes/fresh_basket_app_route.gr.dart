// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'fresh_basket_app_route.dart';

abstract class _$FreshBasketAppRoute extends RootStackRouter {
  // ignore: unused_element
  _$FreshBasketAppRoute({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    FreshBasketHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FreshBasketHomeScreen(),
      );
    },
    FreshBasketSplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FreshBasketSplashScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    ProdactCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<ProdactCategoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProdactCategoryScreen(
          key: args.key,
          categoryModel: args.categoryModel,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
  };
}

/// generated route for
/// [FreshBasketHomeScreen]
class FreshBasketHomeRoute extends PageRouteInfo<void> {
  const FreshBasketHomeRoute({List<PageRouteInfo>? children})
      : super(
          FreshBasketHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'FreshBasketHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<ProdactCategoryRouteArgs> page =
      PageInfo<ProdactCategoryRouteArgs>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
}
