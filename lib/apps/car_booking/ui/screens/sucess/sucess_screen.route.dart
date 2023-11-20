import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/ui/screens/home/home_screen.route.dart';

@RoutePage()
class SucessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131515),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Payment Successfully ",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),
          ),
          Text(
            "completed",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),
          ),
          Text(
            "We’ll deliver your Car in 24hrs",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Material(
              borderRadius: BorderRadius.circular(9),
              color: Colors.grey,
              child: InkWell(
                borderRadius: BorderRadius.circular(9),
                onTap: () {
                  AutoRouter.of(context).popUntil((route) {
                    return route.settings.name == "HomeScreenRoute";
                  }, scoped: true);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                  child: Center(
                    child: Text(
                      "Back To Home",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
