import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/apps/car_booking/routes/car_booking_app_route.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

@RoutePage()
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assest/apps/car_booking/images/splash_screen_image.jfif',
                fit: BoxFit.cover,
              ),

              /*Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assest/apps/car_booking/images/splash_screen_image.jfif"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),*/
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color(0xFF1756CC).withOpacity(0.70),
                      Colors.black.withOpacity(0.70),
                      Color(0x33EB5E28).withOpacity(0.14),
                    ],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: SvgPicture.asset("assest/apps/car_booking/images/logo.svg", semanticsLabel: 'Logo'),
              ),
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 59,
                      right: 63,
                      left: 63,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange.shade800,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          AutoRouter.of(context).push(const HomeScreenRoute());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                          child: Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    "Get Started",
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                              Transform.rotate(
                                angle: -math.pi,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
