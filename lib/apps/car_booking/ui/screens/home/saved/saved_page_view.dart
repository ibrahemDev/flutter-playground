import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/favourites_Rents_notifier.dart';
import 'package:flutter_playground/apps/car_booking/ui/widgets/car_card_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:ui' as ui;

import 'package:gap/gap.dart';

class SavedPageView extends StatelessWidget {
  const SavedPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
                decoration: BoxDecoration(
                  color: Color(0xff9747ff).withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assest/apps/car_booking/images/icons/favourite.svg",
                      height: 16,
                      width: 16,
                      fit: BoxFit.scaleDown,
                      colorFilter: ui.ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                    Gap(16),
                    Text(
                      "Saved Cars",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: Consumer(
              builder: (context, ref, child) {
                return ref.watch(FavouritesRentsNotifier.favouritesRentsNotifierProvider).when(
                  data: (rents) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: rents.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: index == rents.length - 1 ? const EdgeInsets.symmetric(vertical: 24) : const EdgeInsets.only(top: 24),
                          child: CarCardWidget(
                            rentCarViewModel: rents[index],
                          ),
                        );
                      },
                    );
                  },
                  error: (e, s) {
                    return Container(
                      child: Center(
                        child: Text("Error"),
                      ),
                    );
                  },
                  loading: () {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );
              },
            ),
            //child: CarCardWidget(),
          ),
        ],
      ),
    );
  }
}
