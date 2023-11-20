import 'package:auto_route/auto_route.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/models/rent_car_view_model.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/favourites_Rents_notifier.dart';
import 'package:flutter_playground/apps/car_booking/routes/car_booking_app_route.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;

import 'package:gap/gap.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:readmore/readmore.dart';

@RoutePage()
class DetailsScreen extends ConsumerWidget {
  const DetailsScreen({super.key, required this.rentCarViewModel});
  final RentCarViewModel rentCarViewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Color(0xff131515),
      appBar: AppBar(
        title: Text(rentCarViewModel.displayName),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(rentCarViewModel.img),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                /*Text(
                                  "\$${rentCarViewModel.pricePerDay}/Day",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey.shade800),
                                ),*/
                              ],
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
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150), bottomRight: Radius.circular(150)),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Gap(20),
                              Text(
                                "\$${rentCarViewModel.pricePerDay}/Day",
                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.grey.shade800),
                              ),
                              Gap(20),
                              Transform.translate(
                                offset: Offset(0, 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Material(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.orange.shade700,
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(50),
                                        onTap: () {
                                          AutoRouter.of(context).push(PaymentRoute());
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "Book Now",
                                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                              ),
                                              Gap(24),
                                              Icon(
                                                Icons.arrow_right_alt,
                                                color: Colors.white,
                                                size: 29,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Gap(50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rating",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                        ),
                        RatingBarIndicator(
                          //initialRating: rentCarViewModel.rating,
                          //minRating: 1,
                          rating: rentCarViewModel.rating,
                          direction: Axis.horizontal,
                          //allowHalfRating: true,

                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Gap(30),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Overview",
                              style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
                            )
                          ],
                        ),
                        Gap(14),
                        Row(
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: ReadMoreText(
                                rentCarViewModel.overview,
                                trimLines: 4,
                                colorClickableText: Colors.pink,
                                trimMode: TrimMode.Line,
                                trimCollapsedText: 'read more',
                                trimExpandedText: 'Show less',
                                style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                                moreStyle: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
                              ),
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(30),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 29),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Renter Details",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
                    )
                  ],
                ),
                Gap(14),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      RandomAvatar(
                        DateTime.now().toIso8601String(),
                        height: 50,
                        width: 52,
                      ),
                      Gap(16),
                      Expanded(
                        child: Column(children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "John Smith",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.white),
                              Expanded(
                                child: Text(
                                  "Chennai Central, Suburban",
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff339989).withOpacity(0.10),
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          customBorder: CircleBorder(),
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assest/apps/car_booking/images/icons/call.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff339989).withOpacity(0.10),
                          shape: BoxShape.circle,
                        ),
                        child: InkWell(
                          customBorder: CircleBorder(),
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assest/apps/car_booking/images/icons/navigation.svg",
                            fit: BoxFit.scaleDown,
                            colorFilter: ui.ColorFilter.mode(Color(0xff339989), BlendMode.srcIn),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
