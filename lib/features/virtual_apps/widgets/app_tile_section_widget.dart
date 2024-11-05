import 'package:flutter/material.dart';
import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';

import 'package:basic_utils/basic_utils.dart';

class AppTileSectionWidget extends StatelessWidget {
  final VirtualAppManifestModel virtualApp;
  final void Function()? onTap;
  const AppTileSectionWidget({super.key, required this.virtualApp, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 128,
      color: Colors.transparent,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        color: Color(ColorUtils.hexToInt(virtualApp.forgroundColor)),

        //ColorConverter.hexStringToColor(virtualApp.forgroundColor),
        child: InkWell(
          excludeFromSemantics: true,
          splashColor: Colors.blueGrey.shade600.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Hero(
              tag: '${virtualApp.name}',
              child: Material(
                color: Colors.transparent,
                borderOnForeground: true,
                child: Ink.image(
                  image: AssetImage(
                    virtualApp.img,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
