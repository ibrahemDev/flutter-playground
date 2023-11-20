import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_playground/ui/routes/app_route.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  double _opacity = 0;
  bool _value = true;

  @override
  void initState() {
    super.initState();

    scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    )..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            ///AppsViewScreen_fadeIn

            AutoRouter.of(context).replace(
              const AppsViewRoute(),
            );

            Timer(
              Duration(milliseconds: 300),
              () {
                //scaleController.reset();
              },
            );
          }
        },
      );

    scaleAnimation = Tween<double>(begin: 0.0, end: 12).animate(scaleController);

    Timer(Duration(milliseconds: 600), () {
      setState(() {
        _opacity = 1.0;
        _value = false;
      });
    });
    Timer(Duration(milliseconds: 2000), () {
      setState(() {
        scaleController.forward();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Text(
                  'App Logo',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: AnimatedOpacity(
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(seconds: 6),
              opacity: _opacity,
              child: AnimatedContainer(
                curve: Curves.fastLinearToSlowEaseIn,
                duration: Duration(seconds: 2),
                height: _value ? 50 : 200,
                width: _value ? 50 : 200,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurpleAccent.withOpacity(.2),
                      blurRadius: 100,
                      spreadRadius: 10,
                    ),
                  ],
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.deepPurpleAccent, shape: BoxShape.circle),
                    child: AnimatedBuilder(
                      animation: scaleAnimation,
                      builder: (c, child) => Transform.scale(
                        scale: scaleAnimation.value,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
