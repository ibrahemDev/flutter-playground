import 'package:equatable/equatable.dart';

class AppModel extends Equatable {
  final String name;
  final String img;
  final String description;
  final String source; // app code in git
  final String designSource; // like figma design author
  final String forgroundColor;
  final String routePath;
  const AppModel({
    required this.name,
    required this.img,
    required this.description,
    required this.source,
    required this.designSource,
    required this.forgroundColor,
    required this.routePath,
  });
  AppModel copyWith({
    String? name,
    String? img,
    String? description,
    String? source,
    String? designSource,
    String? forgroundColor,
    String? routePath,
  }) {
    return AppModel(
      name: name ?? this.name,
      img: img ?? this.img,
      description: description ?? this.description,
      source: source ?? this.source,
      designSource: designSource ?? this.designSource,
      forgroundColor: forgroundColor ?? this.forgroundColor,
      routePath: routePath ?? this.routePath,
    );
  }

  @override
  List<Object> get props => [name, img, description, source, designSource, forgroundColor, routePath];
}
