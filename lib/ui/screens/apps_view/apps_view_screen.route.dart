import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/fresh_basket/routes/fresh_basket_app_route.dart' show freshBasketAppRouter;

import 'package:flutter_playground/features/apps/apps_providers.dart';
import 'package:flutter_playground/features/apps/models/app_model.dart';

import 'package:flutter_playground/features/theme_mode/states/theme_mode_notifier.dart';
import 'package:flutter_playground/features/theme_mode/theme_mode_providers.dart';
import 'package:flutter_playground/ui/routes/app_route.dart';
import 'package:flutter_playground/utile/color_converter.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AppsViewScreen extends ConsumerStatefulWidget {
  static const String routeName = '/AppsViewScreen';
  const AppsViewScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AppsViewScreen> createState() => _AppsViewScreenState();
}

class _AppsViewScreenState extends ConsumerState<AppsViewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<AppModel> apps = ref.watch(appsList);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Apps List '),
        /*actions: [
          IconButton(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            icon: const Icon(Icons.settings),
            onPressed: () {
              freshBasketAppRouter.navigatorKey.currentState!.pop();
              appRouter.navigatorKey.currentState!.pop();
            },
          ),
          IconButton(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            icon: const Icon(Icons.dark_mode),
            onPressed: () {
              ref.read<ThemeModeNotifier>(themeModeNotifier.notifier).setDark();
            },
          ),
          IconButton(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            icon: const Icon(Icons.light_mode),
            onPressed: () {
              ref.read<ThemeModeNotifier>(themeModeNotifier.notifier).setLight();
            },
          ),
          IconButton(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            icon: const Icon(Icons.system_security_update),
            onPressed: () {
              ref.read<ThemeModeNotifier>(themeModeNotifier.notifier).setSystem();
            },
          ),
        ],*/
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: apps.map<Widget>((app) {
          return Container(
            color: Colors.transparent,
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              color: ColorConverter.hexStringToColor(app.forgroundColor),
              child: InkWell(
                splashColor: Colors.grey.shade600,
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  context.router.push(AppDetailsRoute(appModel: app));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Hero(
                    tag: '${app.name}',
                    child: FittedBox(
                      child: Image.asset(
                        app.img,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
      /**
       * 


      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
       */
    );
  }
}
