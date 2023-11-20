import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_view_model.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/favourites_Rents_notifier.dart';
import 'package:flutter_playground/apps/car_booking/routes/car_booking_app_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'dart:ui' as ui;

class CarCardWidget extends ConsumerWidget {
  final RentCarViewModel rentCarViewModel;
  const CarCardWidget({super.key, required this.rentCarViewModel});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        margin: const EdgeInsets.only(top: 22),
        //decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(rentCarViewModel.img),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.only(right: 12),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: rentCarViewModel.isSaved ? const Color(0xff9747ff).withOpacity(0.1) : Colors.black.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            onTap: () {
                              final favouritesRentsIdsNotifier = ref.read(FavouritesRentsNotifier.favouritesRentsIdsNotifierProvider.notifier);
                              if (rentCarViewModel.isSaved) {
                                final cache = [...favouritesRentsIdsNotifier.state];
                                cache.remove(rentCarViewModel.id);
                                favouritesRentsIdsNotifier.state = cache;
                              } else {
                                favouritesRentsIdsNotifier.state = [
                                  ...favouritesRentsIdsNotifier.state,
                                  rentCarViewModel.id,
                                ];
                              }
                            },
                            child: SvgPicture.asset(
                              "assest/apps/car_booking/images/icons/favourite.svg",
                              height: 16,
                              width: 16,
                              fit: BoxFit.scaleDown,
                              colorFilter: rentCarViewModel.isSaved ? const ui.ColorFilter.mode(Color(0xff9747FF), BlendMode.srcIn) : null,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    rentCarViewModel.displayName,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.black),
                  ),
                  Text(
                    "\$${rentCarViewModel.pricePerDay}/Day",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey.shade800),
                  ),
                ],
              ),
            ),
            const Gap(16),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(color: const Color(0xffeb5e28).withOpacity(0.1), borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          "View Details",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: const Color(0xffEB5E28),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(color: const Color(0xffeb5e28).withOpacity(0.1), borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        "#Trend Car",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              color: const Color(0xffEB5E28),
                            ),
                      ),
                    ),
                  ),
                  Material(
                    color: const Color(0xffEB5E28),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: InkWell(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      onTap: () {
                        AutoRouter.of(context).push(DetailsRoute(rentCarViewModel: rentCarViewModel));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rent",
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                            ),
                            Transform.rotate(
                              angle: -math.pi,
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 15,
                                color: Colors.white,
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
            const Gap(7),
          ],
        ),
      ),
    );
  }
}
