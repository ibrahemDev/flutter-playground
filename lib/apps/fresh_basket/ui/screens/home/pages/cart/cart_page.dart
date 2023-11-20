import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_playground/apps/fresh_basket/features/cart/cart_provider.dart';
import 'package:flutter_playground/apps/fresh_basket/features/prodacts/models/prodact_model.dart';
import 'package:flutter_playground/apps/fresh_basket/features/prodacts/prodacts_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math' as math;

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prodactNotifier = ref.read(prodactsNotifierProvider.notifier);
    return SingleChildScrollView(
      child: Column(
        children: [
          Material(
            color: const Color(0xFFD9D9D9),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Icon(Icons.location_on),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Delivery ",
                              style: Theme.of(context).textTheme.bodyLarge!,
                            ),
                            Text(
                              "Address",
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.green),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Expanded(
                                child: Text(
                              "2nd Cross, 1st Main HSR Layout,Bengaluru.",
                              style: TextStyle(),
                            ))
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Transform.rotate(
                        angle: math.pi,
                        child: const Icon(Icons.arrow_back_ios_new),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Items In Cart :",
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                ref.watch(allProdactsInCartProvider).when(
                  data: (List<ProdactModel> data) {
                    if (data.isEmpty) {
                      return const Center(
                        child: Text("Empty"),
                      );
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final prodact = data[index];
                        return Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                              color: Colors.transparent,
                              child: Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFDBDBDB),
                                child: Container(
                                  padding: const EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage(prodact.img), fit: BoxFit.contain),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          prodact.displayName,
                                          style: Theme.of(context).textTheme.bodyLarge,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        prodact.price.toString(),
                                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.green),
                                      ),
                                      Text(
                                        "/ Kg",
                                        style: Theme.of(context).textTheme.bodyLarge,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                              //padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFDBDBDB),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
                                    child: InkWell(
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                        child: const Text("-"),
                                      ),
                                      onTap: () {
                                        prodactNotifier.decrementProdactOrderCount(prodact);
                                      },
                                    ),
                                  ),
                                  Text(prodact.orderCount.toString()),
                                  Material(
                                    color: Colors.transparent,
                                    borderRadius: const BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
                                    child: InkWell(
                                      borderRadius: const BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                                        child: const Text("+"),
                                      ),
                                      onTap: () {
                                        prodactNotifier.incrementProdactOrderCount(prodact);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
          ),
          Container(
            child: ref.watch(fourProdactNotInCartLengthProvider) == 0
                ? null
                : Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 30,
                          right: 20,
                          left: 20,
                          bottom: 20,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Add More Items :",
                              style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      ref.watch(fourProdactNotInCartProvider).when(
                        data: (List<ProdactModel> data) {
                          return Row(
                            children: data
                                .map(
                                  (prodact) => Flexible(
                                    child: Material(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(10),
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(10),
                                        onTap: () {
                                          prodactNotifier.incrementProdactOrderCount(prodact);
                                        },
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                                              color: Colors.transparent,
                                              child: Material(
                                                elevation: 5,
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color(0xFFDBDBDB),
                                                child: Container(
                                                  padding: const EdgeInsets.all(13),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  child: Container(
                                                    height: 64,
                                                    width: 64,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(image: AssetImage(prodact.img), fit: BoxFit.contain),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              prodact.displayName,
                                              style: Theme.of(context).textTheme.bodyLarge,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  prodact.price.toString(),
                                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.green),
                                                ),
                                                Text(
                                                  "/ Kg",
                                                  style: Theme.of(context).textTheme.bodyLarge,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
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
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Bill Details :",
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sub Total", style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500, color: const Color(0xff707070))),
                      Text(
                        "\$${ref.watch(subTotalPriceProvider)}",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee", style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500, color: const Color(0xff707070))),
                      Text(
                        "\$${ref.watch(deliveryFeeProvider)}",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tax & Other Fee",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500, color: const Color(0xff707070)),
                      ),
                      Text(
                        "\$${ref.watch(taxAndOtherFeeProvider)}",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    right: 40,
                    left: 40,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                      Text(
                        "\$${ref.watch(totalCartPriceProvider)}",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          ///(loginFormState.isPure || loginFormState.isNotValid || !loginFormState.submissionStatus.isInitial)
                          onPressed: () {},

                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1, // thickness
                                color: Colors.black, // color
                              ),
                              // border radius
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            //MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 20)),
                            backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.green,
                            ),
                          ),
                          child: Text(
                            "Make Payment",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
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
