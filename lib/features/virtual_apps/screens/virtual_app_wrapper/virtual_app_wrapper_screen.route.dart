import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';

import 'package:flutter_playground/routes/app_route.dart';

@RoutePage()
class VirtualAppWrapperScreen extends StatefulWidget {
  final Widget app;
  // final RootStackRouter? Function() getVirtualAppRouter;
  final VirtualAppManifestModel appManifest;
  static const String routeName = '/VirtualAppWrapperScreen';
//required this.getVirtualAppRouter
  const VirtualAppWrapperScreen({super.key, required this.app, required this.appManifest});

  @override
  State<VirtualAppWrapperScreen> createState() => _VirtualAppWrapperScreenState();
}

class _VirtualAppWrapperScreenState extends State<VirtualAppWrapperScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, //(widget.getVirtualAppRouter()?.canPop() ?? false),

      onPopInvokedWithResult: (v, d) {
        if (v) {
        } else {
          log("!!!!!!!!!!!!!${v} ${d}");

          //final virtualAppRouter = ref.read(virtualAppRouterProvider);
          final virtualAppRouter = widget.appManifest.getRouter();

          //widget.getVirtualAppRouter();

          if (virtualAppRouter?.canPop() ?? false) {
            log("-->virtualAppRouter");
            virtualAppRouter?.popForced();
          } else {
            log("-->mainAppRouter");
            mainAppRouter.popForced();
          }
        }
      },
      child: widget.app,
    );
  }

  @override
  void dispose() {
    //widget.disposeRouter();
    super.dispose();
  }
}
