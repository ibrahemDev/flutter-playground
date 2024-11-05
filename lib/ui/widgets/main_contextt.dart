import 'package:flutter/material.dart';

class MainContextWidget extends InheritedWidget {
  final BuildContext mainContext;

  const MainContextWidget({
    super.key,
    required this.mainContext,
    required super.child,
  });

  @override
  bool updateShouldNotify(covariant MainContextWidget oldWidget) => mainContext != oldWidget.mainContext;

  static MainContextWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MainContextWidget>();
  }
}
