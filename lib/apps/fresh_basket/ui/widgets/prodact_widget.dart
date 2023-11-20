import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/fresh_basket/features/prodacts/models/prodact_model.dart';
import 'package:flutter_playground/apps/fresh_basket/features/prodacts/states/prodacts_notifier.dart';

class ProdactWidget extends StatelessWidget {
  final ProdactModel prodact;
  final ProdactsNotifier prodactNotifier;
  const ProdactWidget({super.key, required this.prodact, required this.prodactNotifier});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFDBDBDB),
        child: Container(
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      if (prodact.liked) {
                        prodactNotifier.removeLikeProdact(prodact);

                        //addLikeProdact
                      } else {
                        prodactNotifier.addLikeProdact(prodact);
                      }
                    },
                    icon: Icon(
                      prodact.liked ? Icons.favorite : Icons.favorite_border,
                      color: prodact.liked ? Colors.red : Colors.green,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  //height: 110,
                  height: 10000,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(prodact.img), fit: BoxFit.fill),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      prodact.displayName,
                      style: Theme.of(context).textTheme.bodyLarge!,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: '\$${prodact.price}',
                        style: const TextStyle(color: Colors.green),
                        /*defining default style is optional */
                        children: const <TextSpan>[
                          TextSpan(
                            text: '/kg',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (prodact.orderCount == 0) {
                        prodactNotifier.incrementProdactOrderCount(prodact);
                      } else {
                        prodactNotifier.resetOrderCount(prodact);
                      }
                    },
                    icon: Icon(
                      prodact.orderCount == 0 ? Icons.add_circle_rounded : Icons.remove_circle,
                      color: prodact.orderCount == 0 ? Colors.green : Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


 /**
                                     *  child: Center(
                                          child: FittedBox(
                                            child: ConstrainedBox(
                                              constraints: BoxConstraints(minWidth: 1, minHeight: 1),
                                              child: Image.asset(
                                                prodact.img,
                                              ),
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                     */