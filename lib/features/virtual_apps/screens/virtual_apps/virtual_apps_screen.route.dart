import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/features/virtual_apps/widgets/virtual_apps_list_widget.dart';

@RoutePage()
class VirtualAppsScreen extends StatelessWidget {
  static const String routeName = '/VirtualAppsScreen';
  const VirtualAppsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Apps List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: VirtualAppsListWidget(),
            ),
          )
        ],
      ),
    );
  }
}
