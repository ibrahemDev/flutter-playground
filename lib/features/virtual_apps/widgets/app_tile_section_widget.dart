import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';

import 'package:basic_utils/basic_utils.dart';
import 'package:flutter_svg/svg.dart';

//  width: 140,
//height: 128,
class AppTileSectionWidget extends StatelessWidget {
  final VirtualAppManifestModel virtualApp;
  final double width;
  final double height;

  final void Function()? onTap;
  const AppTileSectionWidget({super.key, required this.virtualApp, this.onTap, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, //140 - 20,
      height: height, //128 - 20,
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
          onTap: onTap != null
              ? () {
                  HapticFeedback.lightImpact();
                  onTap!();
                }
              : null,
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
                child: _buildImageWidget(),
                //Ink.image(
                //  image: AssetImage(
                //    virtualApp.img,
                //  ),
                //  fit: BoxFit.fill,
                //),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageWidget() {
    if (virtualApp.appIconType == "svg") {
      return SvgPicture.asset(
        virtualApp.img,
        //height: 16,
        //width: 16,
        fit: BoxFit.fill,
        //colorFilter: rentCarViewModel.isSaved ? const ui.ColorFilter.mode(Color(0xff9747FF), BlendMode.srcIn) : null,
      );
    } else if (virtualApp.appIconType == "png") {
      return Ink.image(
        image: AssetImage(
          virtualApp.img,
        ),
        fit: BoxFit.fill,
      );
    } else {
      return Container();
    }
  }
}

/**
 * 
 * 
 */
