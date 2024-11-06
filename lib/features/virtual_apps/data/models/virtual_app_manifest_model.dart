import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';

class VirtualAppManifestModel extends Equatable {
  final String name;
  final String img;
  final String description;
  final String source; // app code in git
  final String designSource; // like figma design author
  final String forgroundColor;
  final String routePath;
  final void Function() runApp;
  final RootStackRouter? Function() getRouter;
  final String appIconType;

  const VirtualAppManifestModel({
    required this.name,
    required this.img,
    required this.description,
    required this.source,
    required this.designSource,
    required this.forgroundColor,
    required this.routePath,
    required this.runApp,
    required this.getRouter,
    required this.appIconType,
  });
  VirtualAppManifestModel copyWith({
    String? name,
    String? img,
    String? description,
    String? source,
    String? designSource,
    String? forgroundColor,
    String? routePath,
    void Function()? runApp,
    //RootStackRouter? Function()? getRouter,
    String? appIconType,
  }) {
    return VirtualAppManifestModel(
      name: name ?? this.name,
      img: img ?? this.img,
      description: description ?? this.description,
      source: source ?? this.source,
      designSource: designSource ?? this.designSource,
      forgroundColor: forgroundColor ?? this.forgroundColor,
      routePath: routePath ?? this.routePath,
      runApp: runApp ?? this.runApp,
      getRouter: getRouter, // TODO fix nullable copy with
      appIconType: appIconType ?? this.appIconType,
    );
  }

  @override
  List<Object> get props => [name, img, description, source, designSource, forgroundColor, routePath, runApp, getRouter, appIconType];
}
