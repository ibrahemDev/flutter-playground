import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/lanch_app.dart';
//import 'package:flutter_playground/features/apps/apps_providers.dart';
import 'package:flutter_playground/features/apps/models/app_model.dart';
import 'package:flutter_playground/utile/color_converter.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AppDetailsScreen extends ConsumerStatefulWidget {
  static const String routeName = '/AppDetails';
  final AppModel appModel;
  const AppDetailsScreen({Key? key, required this.appModel}) : super(key: key);

  @override
  ConsumerState<AppDetailsScreen> createState() => _AppDetailsScreenState();
}

class _AppDetailsScreenState extends ConsumerState<AppDetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final List<AppModel> apps = ref.watch(appsList);

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: Text(widget.appModel.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //color: Colors.red,
                //height: 150,

                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 128,
                      height: 128,
                      color: Colors.transparent,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConverter.hexStringToColor(widget.appModel.forgroundColor),
                        child: InkWell(
                          splashColor: Colors.grey.shade600,
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Hero(
                              tag: '${widget.appModel.name}',
                              child: FittedBox(
                                child: Image.asset(widget.appModel.img),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //color: Colors.green,
                        height: 128,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: Text(widget.appModel.name, style: Theme.of(context).textTheme.displayLarge),
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
                        onPressed: () async {
                          await lanchApp(context, widget.appModel);
                        },
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
            ],
          ),
        ));
  }
}

/**
 * Center(
        child: 
      ),
 */
