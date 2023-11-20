import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_playground/apps/fresh_basket/routes/fresh_basket_app_route.dart';
import 'package:flutter_playground/ui/routes/app_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'dart:math' as math;

class ProfilePageWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12, bottom: 12, left: 34, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey.shade300,
                      elevation: 7,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 11, horizontal: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage('assest/images/avatars/avatar1.png'),
                              ),
                            ),
                            Gap(24),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "ibrahim AL-harbi",
                                          style: Theme.of(context).textTheme.displayLarge!.copyWith(),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Joined Feb 15, 2021",
                                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(10),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), border: Border.all(color: Colors.grey.shade300)),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.grey.shade300,
              elevation: 7,
              child: Row(
                children: [
                  Expanded(
                      child: InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                      child: Row(
                        children: [
                          Icon(Icons.account_circle_rounded),
                          Gap(10),
                          Expanded(
                              child: Text(
                            "Account Settings",
                            style: Theme.of(context).textTheme.bodyLarge,
                          )),
                          Transform.rotate(
                            angle: -math.pi,
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.grey.shade700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), border: Border.all(color: Colors.grey.shade300)),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.grey.shade300,
              elevation: 7,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        child: Row(
                          children: [
                            Icon(Icons.account_circle_rounded),
                            Gap(10),
                            Expanded(
                              child: Text(
                                "Card Details",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                            Transform.rotate(
                              angle: -math.pi,
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), border: Border.all(color: Colors.grey.shade300)),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.red,
              elevation: 7,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      onTap: () {
                        AutoRouter.of(context).replaceAll([const FreshBasketSplashRoute()]);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        child: Row(
                          children: [
                            Icon(Icons.logout),
                            Gap(10),
                            Expanded(
                              child: Text(
                                "Logout",
                                style: Theme.of(context).textTheme.bodyLarge!,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), border: Border.all(color: Colors.grey.shade300)),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.red,
              elevation: 7,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      onTap: () {
                        freshBasketAppRouter.navigatorKey.currentState!.pop();
                        appRouter.navigatorKey.currentState!.pop();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        child: Row(
                          children: [
                            Icon(Icons.exit_to_app),
                            Gap(10),
                            Expanded(
                              child: Text(
                                "Exit",
                                style: Theme.of(context).textTheme.bodyLarge!,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
