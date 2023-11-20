import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/fresh_basket/features/categories/categories_providers.dart';
import 'package:flutter_playground/apps/fresh_basket/features/categories/models/categorie_model.dart';
import 'package:flutter_playground/apps/fresh_basket/features/prodacts/prodacts_providers.dart';
import 'package:flutter_playground/apps/fresh_basket/routes/fresh_basket_app_route.dart';
import 'package:flutter_playground/apps/fresh_basket/ui/widgets/prodact_widget.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

enum HomePageProdactMode { search, normal }

final homePageProdactMode =
    Provider<HomePageProdactMode>((ref) => ref.watch(searchTextProdactsProvider).isEmpty ? HomePageProdactMode.normal : HomePageProdactMode.search, dependencies: [searchTextProdactsProvider]);

class HomePageWidget extends ConsumerWidget {
  const HomePageWidget({super.key});

  Widget _buildCategorie(BuildContext context, CategoryModel categoryModel) {
    //categoriesList
    return Container(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          AutoRouter.of(context).push(ProdactCategoryRoute(categoryModel: categoryModel));
        },
        child: Container(
          margin: const EdgeInsets.only(right: 7, left: 7, top: 7),
          child: Column(
            children: [
              Container(
                width: 69,
                height: 71,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(categoryModel.img),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      categoryModel.displayName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                        letterSpacing: 0.01,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController scrollController = ScrollController();
    final HomePageProdactMode homePageProdactModeWatch = ref.watch(homePageProdactMode);
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) {
                                ref.read(searchTextProdactsProvider.notifier).update((state) => state = value);
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                suffixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                filled: true,
                                hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: const Color(0xffD9D9D9),
                                    ),
                                hintText: 'Search',
                                fillColor: Colors.white70,
                              ),
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.black,
                                  ),
                              autofocus: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              /**
                   * app.img,assest/apps/fresh_basket/images
                   */

              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: homePageProdactModeWatch == HomePageProdactMode.normal
                    ? Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10, left: 10, top: 19, bottom: 23),
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.28), BlendMode.darken),
                                image: AssetImage("assest/apps/fresh_basket/images/a1.jfif"),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 75,
                                  width: double.infinity,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 24, left: 24, bottom: 28),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Enjoy your day",
                                            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Get Upto ",
                                            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
                                          ),
                                          Text(
                                            "50%",
                                            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.red),
                                          ),
                                          Text(
                                            " Off for you",
                                            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 19, right: 19, bottom: 14),
                            child: Row(
                              children: [
                                Text(
                                  "Categories",
                                  style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 110,
                                  child: ListView.builder(
                                    itemCount: ref.watch(categoriesList).length,
                                    padding: const EdgeInsets.symmetric(horizontal: 14),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return _buildCategorie(context, ref.watch(categoriesList)[index]);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 19, right: 19, bottom: 14),
                            child: Row(
                              children: [
                                Text(
                                  "Popular Products",
                                  style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Container(),
              ),
              Column(
                children: [
                  ref.watch(searchedProdactsProvider).when(
                    data: (prodacts) {
                      final prodactNotifier = ref.read(prodactsNotifierProvider.notifier);
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 33),
                        itemCount: prodacts.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 25,
                          mainAxisSpacing: 25,
                          mainAxisExtent: 210,
                        ),
                        itemBuilder: (context, index) {
                          final prodact = prodacts[index];
                          return ProdactWidget(
                            prodact: prodact,
                            prodactNotifier: prodactNotifier,
                          );
                        },
                      );
                    },
                    error: (error, stackTrace) {
                      return const Text("Error");
                    },
                    loading: () {
                      return const CircularProgressIndicator();
                    },
                  ),
                ],
              ),
              /*Row(
                children: [
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
                ],
              ),*/
            ],
          ),
        );
      },
    );
  }
}
