import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/features/virtual_apps/data/models/virtual_app_manifest_model.dart';
import 'package:flutter_playground/features/virtual_apps/widgets/app_tile_section_widget.dart';

@RoutePage()
class VirtualAppDetailsScreen extends StatelessWidget {
  static const String routeName = '/VirtualAppDetailsScreen';
  final VirtualAppManifestModel virtualAppModel;
  const VirtualAppDetailsScreen({super.key, required this.virtualAppModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(virtualAppModel.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                children: [
                  AppTileSectionWidget(virtualApp: virtualAppModel),
                  //AppTileSectionWidget(virtualApp: virtualAppModel),
                  Expanded(
                    child: Container(
                      //color: Colors.green,
                      height: 128,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 20),
                            child: Text(virtualAppModel.name, style: Theme.of(context).textTheme.headlineSmall),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: ElevatedButton(
                      onPressed: virtualAppModel.runApp,
                      child: Text(
                        'Open App',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            //Center(
            //  child: OutlinedButton(onPressed: virtualAppModel.runApp, child: Text(".....")),
            //),
          ],
        ),
      ),
    );
  }
}
