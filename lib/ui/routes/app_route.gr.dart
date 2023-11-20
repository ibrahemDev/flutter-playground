// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AppDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<AppDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AppDetailsScreen(
          key: args.key,
          appModel: args.appModel,
        ),
      );
    },
    AppsViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppsViewScreen(),
      );
    },
    CarBookingAppRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CarBookingAppScreen(),
      );
    },
    FreshBasketAppRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FreshBasketAppScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [AppDetailsScreen]
class AppDetailsRoute extends PageRouteInfo<AppDetailsRouteArgs> {
  AppDetailsRoute({
    Key? key,
    required AppModel appModel,
    List<PageRouteInfo>? children,
  }) : super(
          AppDetailsRoute.name,
          args: AppDetailsRouteArgs(
            key: key,
            appModel: appModel,
          ),
          initialChildren: children,
        );

  static const String name = 'AppDetailsRoute';

  static const PageInfo<AppDetailsRouteArgs> page =
      PageInfo<AppDetailsRouteArgs>(name);
}

class AppDetailsRouteArgs {
  const AppDetailsRouteArgs({
    this.key,
    required this.appModel,
  });

  final Key? key;

  final AppModel appModel;

  @override
  String toString() {
    return 'AppDetailsRouteArgs{key: $key, appModel: $appModel}';
  }
}

/// generated route for
/// [AppsViewScreen]
class AppsViewRoute extends PageRouteInfo<void> {
  const AppsViewRoute({List<PageRouteInfo>? children})
      : super(
          AppsViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppsViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CarBookingAppScreen]
class CarBookingAppRoute extends PageRouteInfo<void> {
  const CarBookingAppRoute({List<PageRouteInfo>? children})
      : super(
          CarBookingAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'CarBookingAppRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FreshBasketAppScreen]
class FreshBasketAppRoute extends PageRouteInfo<void> {
  const FreshBasketAppRoute({List<PageRouteInfo>? children})
      : super(
          FreshBasketAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'FreshBasketAppRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
