// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'car_booking_app_route.dart';

abstract class _$CarBookingAppRoute extends RootStackRouter {
  // ignore: unused_element
  _$CarBookingAppRoute({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailsScreen(
          key: args.key,
          rentCarViewModel: args.rentCarViewModel,
        ),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    PaymentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PaymentScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SplashScreen(),
      );
    },
    SucessRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SucessScreen(),
      );
    },
  };
}

/// generated route for
/// [DetailsScreen]
class DetailsRoute extends PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({
    Key? key,
    required RentCarViewModel rentCarViewModel,
    List<PageRouteInfo>? children,
  }) : super(
          DetailsRoute.name,
          args: DetailsRouteArgs(
            key: key,
            rentCarViewModel: rentCarViewModel,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailsRoute';

  static const PageInfo<DetailsRouteArgs> page =
      PageInfo<DetailsRouteArgs>(name);
}

class DetailsRouteArgs {
  const DetailsRouteArgs({
    this.key,
    required this.rentCarViewModel,
  });

  final Key? key;

  final RentCarViewModel rentCarViewModel;

  @override
  String toString() {
    return 'DetailsRouteArgs{key: $key, rentCarViewModel: $rentCarViewModel}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute({List<PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentScreen]
class PaymentRoute extends PageRouteInfo<void> {
  const PaymentRoute({List<PageRouteInfo>? children})
      : super(
          PaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

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

/// generated route for
/// [SucessScreen]
class SucessRoute extends PageRouteInfo<void> {
  const SucessRoute({List<PageRouteInfo>? children})
      : super(
          SucessRoute.name,
          initialChildren: children,
        );

  static const String name = 'SucessRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
