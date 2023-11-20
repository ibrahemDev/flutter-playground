import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/features/apps/models/app_model.dart';

Future<void> lanchApp(BuildContext context, AppModel appModel) async {
  await context.router.pushNamed(appModel.routePath);
}
