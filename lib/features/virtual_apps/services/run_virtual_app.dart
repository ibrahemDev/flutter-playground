import 'package:flutter/material.dart';
import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';
import 'package:flutter_playground/routes/app_route.dart';

//RootStackRouter? Function() getVirtualAppRouter,
//, getVirtualAppRouter: getVirtualAppRouter
void runVirtualApp(VirtualAppManifestModel appManifest, Widget app) async {
  mainAppRouter.push(VirtualAppWrapperRoute(app: app, appManifest: appManifest));
}
