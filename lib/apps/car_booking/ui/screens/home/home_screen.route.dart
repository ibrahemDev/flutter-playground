import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/ui/screens/home/home/home_page_view.dart';
import 'package:flutter_playground/apps/car_booking/ui/screens/home/map_car/map_car_view.dart';
import 'package:flutter_playground/apps/car_booking/ui/screens/home/profile/profile_page.dart';
import 'package:flutter_playground/apps/car_booking/ui/screens/home/saved/saved_page_view.dart';
import 'package:flutter_playground/features/page_view/page_view_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;

@RoutePage(name: "HomeScreenRoute")
class HomeScreen extends StatelessWidget {
  static const String routeName = '/HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131515),
      bottomNavigationBar: Consumer(
        builder: (context, ref, child) {
          return BottomNavigationBar(
            iconSize: 24,
            //fixedColor: Colors.red,
            backgroundColor: Color(0xff1A1A1A),
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assest/apps/car_booking/images/icons/home.svg",
                  semanticsLabel: '',
                  colorFilter: ui.ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                label: 'Home',
                backgroundColor: Color(0xff1A1A1A),
                activeIcon: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange.shade800.withOpacity(0.10),
                  ),
                  child: SvgPicture.asset(
                    "assest/apps/car_booking/images/icons/home.svg",

                    semanticsLabel: '',
                    //color: Colors.red,
                    colorFilter: ui.ColorFilter.mode(Colors.orange.shade800, BlendMode.srcIn),
                  ),
                ),

                //backgroundColor: Colors.pink,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assest/apps/car_booking/images/icons/navigation.svg",
                  semanticsLabel: '',
                  colorFilter: ui.ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                label: 'navigation',
                backgroundColor: Color(0xff1A1A1A),
                activeIcon: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff339989).withOpacity(0.10),
                  ),
                  child: SvgPicture.asset(
                    "assest/apps/car_booking/images/icons/navigation.svg",

                    semanticsLabel: '',
                    //color: Colors.red,
                    colorFilter: ui.ColorFilter.mode(Color(0xff339989), BlendMode.srcIn),
                  ),
                ),

                //backgroundColor: Colors.pink,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assest/apps/car_booking/images/icons/favourite.svg",
                  semanticsLabel: '',
                  colorFilter: ui.ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                label: 'favourite',
                backgroundColor: Color(0xff1A1A1A),
                activeIcon: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff9747FF).withOpacity(0.10),
                  ),
                  child: SvgPicture.asset(
                    "assest/apps/car_booking/images/icons/favourite.svg",

                    semanticsLabel: '',
                    //color: Colors.red,
                    colorFilter: ui.ColorFilter.mode(Color(0xff9747FF), BlendMode.srcIn),
                  ),
                ),

                //backgroundColor: Colors.pink,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assest/apps/car_booking/images/icons/profile.svg",
                  semanticsLabel: '',
                  colorFilter: ui.ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                label: 'Home',
                backgroundColor: Color(0xff1A1A1A),
                activeIcon: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff1756CC).withOpacity(0.10),
                  ),
                  child: SvgPicture.asset(
                    "assest/apps/car_booking/images/icons/profile.svg",

                    semanticsLabel: '',
                    //color: Colors.red,
                    colorFilter: ui.ColorFilter.mode(Color(0xff1756CC), BlendMode.srcIn),
                  ),
                ),

                //backgroundColor: Colors.pink,
              ),
            ],
            onTap: (int num) {
              ref.read(pageViewControlerProvider).animateToPage(num, duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
            },
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.shifting,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: ref.watch(currentPageStateProvider),
          );
        },
      ),
      body: Consumer(
        builder: (context, ref, child) {
          return Column(
            children: [
              Expanded(
                child: PageView(
                  allowImplicitScrolling: true,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (int num) {
                    ref.read(currentPageStateProvider.notifier).state = num;
                  },
                  scrollDirection: Axis.horizontal,
                  controller: ref.watch(pageViewControlerProvider),
                  dragStartBehavior: DragStartBehavior.down,
                  children: [
                    HomePageView(),
                    MapCarPageView(),
                    SavedPageView(),
                    ProfilePageView(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
