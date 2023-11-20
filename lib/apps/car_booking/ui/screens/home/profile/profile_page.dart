import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/routes/car_booking_app_route.dart';

import 'package:flutter_playground/ui/routes/app_route.dart';
import 'package:gap/gap.dart';
import 'package:random_avatar/random_avatar.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 12, left: 34, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Material(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey.shade900,
                    elevation: 7,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 12),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        children: [
                          RandomAvatar(
                            DateTime.now().toIso8601String(),
                            height: 60,
                            width: 60,
                          ),
                          const Gap(24),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "ibrahim AL-harbi",
                                        style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Joined Feb 15, 2021",
                                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 16, color: Colors.white),
                                      ),
                                    ),
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
                const Gap(10),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 29,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 29,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "History",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          const Gap(32),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 118,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      Container(
                        width: 170,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade600,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "21 Sep, 23",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white.withOpacity(0.4)),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assest/apps/car_booking/images/cars/benz_thunder_R.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Benz Thunder",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(16),
                      Container(
                        width: 170,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade600,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "15 Sep, 23",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white.withOpacity(0.4)),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assest/apps/car_booking/images/cars/audi.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Audi R18",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(16),
                      Container(
                        width: 170,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade600,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "15 Sep, 23",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white.withOpacity(0.4)),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assest/apps/car_booking/images/cars/audi.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Audi R18",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(16),
                      Container(
                        width: 170,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade600,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "15 Sep, 23",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white.withOpacity(0.4)),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assest/apps/car_booking/images/cars/audi.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Audi R18",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(16),
                      Container(
                        width: 170,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade600,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "15 Sep, 23",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white.withOpacity(0.4)),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assest/apps/car_booking/images/cars/audi.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Audi R18",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Gap(33),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "Profile Settings",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          const Gap(18),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(8)), border: Border.all(color: Colors.white.withOpacity(0.4))),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: const Color(0xff131515),
              elevation: 7,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        child: Row(
                          children: [
                            const Icon(Icons.account_circle_rounded, color: Colors.white),
                            const Gap(10),
                            Expanded(
                              child: Text(
                                "Account Settings",
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
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
          const Gap(10),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(8)), border: Border.all(color: Colors.white.withOpacity(0.4))),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: const Color(0xff131515),
              elevation: 7,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        child: Row(
                          children: [
                            const Icon(Icons.card_membership_outlined, color: Colors.white),
                            const Gap(10),
                            Expanded(
                              child: Text(
                                "Card Details",
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
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
          const Gap(10),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(8)), border: Border.all(color: Colors.white.withOpacity(0.4))),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: const Color(0xff131515),
              elevation: 7,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        child: Row(
                          children: [
                            const Icon(Icons.car_crash_outlined, color: Colors.white),
                            const Gap(10),
                            Expanded(
                              child: Text(
                                "Car Preferences",
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
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
          const Gap(10),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(8)), border: Border.all(color: Colors.white.withOpacity(0.4))),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: const Color(0xff131515),
              elevation: 7,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        child: Row(
                          children: [
                            const Icon(Icons.local_offer_outlined, color: Colors.white),
                            const Gap(10),
                            Expanded(
                              child: Text(
                                "Offers and Discounts",
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
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
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(8)), border: Border.all(color: Colors.grey.shade300)),
            child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: Colors.red,
              elevation: 7,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      onTap: () {
                        carBookingAppRouter.navigatorKey.currentState!.pop();
                        appRouter.navigatorKey.currentState!.pop();
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        child: Row(
                          children: [
                            const Icon(Icons.exit_to_app),
                            const Gap(10),
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
