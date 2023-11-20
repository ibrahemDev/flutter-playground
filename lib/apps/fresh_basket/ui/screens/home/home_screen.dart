import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_playground/apps/fresh_basket/features/home_page_view/home_page_view_providers.dart';

import 'package:flutter_playground/apps/fresh_basket/ui/screens/home/pages/cart/cart_page.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/screens/home/pages/favourite/favourite_page.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/screens/home/pages/home/home_page.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/screens/home/pages/profile/profile_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:badges/badges.dart' as badges;

@RoutePage()
class FreshBasketHomeScreen extends ConsumerStatefulWidget {
  static const String routeName = '/FreshBasketHomeScreen';
  const FreshBasketHomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FreshBasketHomeScreenState createState() => _FreshBasketHomeScreenState();
}

class _FreshBasketHomeScreenState extends ConsumerState<FreshBasketHomeScreen> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final currentPage = ref.watch(currentPageNotifier);
    //ref.watch(homePageControlerProvider);
    //controller.dispose();
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
        ],
        onTap: (int num) {
          ref.read(homePageControlerProvider).animateToPage(num, duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPage,
      ),
      appBar: AppBar(
        title: Builder(
          builder: (context) {
            if (currentPage == 0) {
              return const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome To ",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text("Fresh Basket"),
                ],
              );
            } else if (currentPage == 1) {
              return Text(
                "Favourites Prodact",
                style: TextStyle(color: Colors.black),
              );
            } else if (currentPage == 2) {
              return Text(
                "Cart",
                style: TextStyle(color: Colors.black),
              );
            } else if (currentPage == 3) {
              return Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              );
            } else {
              return Text(
                "",
                style: TextStyle(color: Colors.black),
              );
            }
          },
        ),
        centerTitle: true,
        actions: [
          badges.Badge(
            badgeContent: Text(
              '3',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
            position: badges.BadgePosition.topEnd(top: -3, end: 5),

            //child: Icon(Icons.notifications_outlined, color: Colors.black),
            child: IconButton(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              icon: const Icon(Icons.notifications_outlined, color: Colors.black),
              onPressed: () async {},
            ),
          ),

          //currentPageNotifier
        ],
      ),
      body: PageView(
        allowImplicitScrolling: true,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (int num) {
          ref.read(currentPageNotifier.notifier).setCurrentPage(num);
        },
        scrollDirection: Axis.horizontal,
        controller: ref.watch(homePageControlerProvider),
        dragStartBehavior: DragStartBehavior.down,
        children: [
          HomePageWidget(),
          FavouritePageWidget(),
          CartPage(),
          ProfilePageWidget(),
        ],
      ),
    );
  }
}
