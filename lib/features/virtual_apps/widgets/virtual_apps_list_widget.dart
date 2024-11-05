import 'package:flutter/material.dart';

import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';
import 'package:flutter_playground/features/virtual_apps/providers/virtual_apps_list_provider.dart';
import 'package:flutter_playground/features/virtual_apps/widgets/app_tile_section_widget.dart';
import 'package:flutter_playground/routes/app_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VirtualAppsListWidget extends ConsumerWidget {
  const VirtualAppsListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<VirtualAppManifestModel> virtualApps = ref.watch(virtualAppsListProvider);

    return Padding(
      padding: EdgeInsets.all(10),
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 10,
        runSpacing: 12,
        children: _buildWrapChildren(virtualApps),
      ),
    );
  }

  List<Widget> _buildWrapChildren(List<VirtualAppManifestModel> virtualApps) {
    return virtualApps.map((virtualApp) {
      return AppTileSectionWidget(
        virtualApp: virtualApp,
        onTap: () {
          mainAppRouter.push(VirtualAppDetailsRoute(virtualAppModel: virtualApp));
          //AutoRouter.of(context).pushNamed(VirtualAppDetailsScreen.routeName);
          //context.router.push(AppDetailsRoute(appModel: virtualApp));
        },
      );
    }).toList();
  }
}
