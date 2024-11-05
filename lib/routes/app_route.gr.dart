// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [VirtualAppDetailsScreen]
class VirtualAppDetailsRoute extends PageRouteInfo<VirtualAppDetailsRouteArgs> {
  VirtualAppDetailsRoute({
    Key? key,
    required VirtualAppManifestModel virtualAppModel,
    List<PageRouteInfo>? children,
  }) : super(
          VirtualAppDetailsRoute.name,
          args: VirtualAppDetailsRouteArgs(
            key: key,
            virtualAppModel: virtualAppModel,
          ),
          initialChildren: children,
        );

  static const String name = 'VirtualAppDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VirtualAppDetailsRouteArgs>();
      return VirtualAppDetailsScreen(
        key: args.key,
        virtualAppModel: args.virtualAppModel,
      );
    },
  );
}

class VirtualAppDetailsRouteArgs {
  const VirtualAppDetailsRouteArgs({
    this.key,
    required this.virtualAppModel,
  });

  final Key? key;

  final VirtualAppManifestModel virtualAppModel;

  @override
  String toString() {
    return 'VirtualAppDetailsRouteArgs{key: $key, virtualAppModel: $virtualAppModel}';
  }
}

/// generated route for
/// [VirtualAppWrapperScreen]
class VirtualAppWrapperRoute extends PageRouteInfo<VirtualAppWrapperRouteArgs> {
  VirtualAppWrapperRoute({
    Key? key,
    required Widget app,
    required VirtualAppManifestModel appManifest,
    List<PageRouteInfo>? children,
  }) : super(
          VirtualAppWrapperRoute.name,
          args: VirtualAppWrapperRouteArgs(
            key: key,
            app: app,
            appManifest: appManifest,
          ),
          initialChildren: children,
        );

  static const String name = 'VirtualAppWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VirtualAppWrapperRouteArgs>();
      return VirtualAppWrapperScreen(
        key: args.key,
        app: args.app,
        appManifest: args.appManifest,
      );
    },
  );
}

class VirtualAppWrapperRouteArgs {
  const VirtualAppWrapperRouteArgs({
    this.key,
    required this.app,
    required this.appManifest,
  });

  final Key? key;

  final Widget app;

  final VirtualAppManifestModel appManifest;

  @override
  String toString() {
    return 'VirtualAppWrapperRouteArgs{key: $key, app: $app, appManifest: $appManifest}';
  }
}

/// generated route for
/// [VirtualAppsScreen]
class VirtualAppsRoute extends PageRouteInfo<void> {
  const VirtualAppsRoute({List<PageRouteInfo>? children})
      : super(
          VirtualAppsRoute.name,
          initialChildren: children,
        );

  static const String name = 'VirtualAppsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const VirtualAppsScreen();
    },
  );
}
