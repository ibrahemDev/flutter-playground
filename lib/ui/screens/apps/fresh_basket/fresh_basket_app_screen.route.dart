import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/fresh_basket/fresh_basket_main.dart';

@RoutePage()
class FreshBasketAppScreen extends StatelessWidget {
  static const String routeName = '/FreshBasketApp';
  const FreshBasketAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const FreshBasketMainWidget();
  }
}
