import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/fresh_basket/routes/fresh_basket_app_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class FreshBasketSplashScreen extends ConsumerStatefulWidget {
  static const String routeName = '/FreshBasketSplashScreen';
  const FreshBasketSplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<FreshBasketSplashScreen> createState() => _FreshBasketSplashScreenState();
}

class _FreshBasketSplashScreenState extends ConsumerState<FreshBasketSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () async {
      AutoRouter.of(context).pushAndPopUntil(
        const LoginRoute(),
        predicate: (_) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                height: constraints.maxHeight / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Fresh",
                              style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white, fontSize: 80),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Basket",
                              style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white, fontSize: 80),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: constraints.maxHeight / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        //borderRadius: BorderRadius.circular(80),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "OFFER",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            "ZONE",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Yours Fresh Vegetables Here",
                              style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.grey.shade300, fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: constraints.maxHeight / 3,
                child: Stack(
                  children: [
                    Positioned.fill(
                      bottom: -200,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assest/apps/fresh_basket/images/a1_prev_ui.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
