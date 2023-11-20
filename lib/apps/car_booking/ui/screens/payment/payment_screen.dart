import 'package:auto_route/auto_route.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_playground/apps/car_booking/routes/car_booking_app_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

@RoutePage()
class PaymentScreen extends ConsumerStatefulWidget {
  const PaymentScreen({super.key});

  @override
  ConsumerState<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends ConsumerState<PaymentScreen> {
  List<DateTime?> _dates = [
    DateTime.now(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131515),
      appBar: AppBar(
        backgroundColor: Color(0xff131515),
        title: Text(
          "Payment and Details",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CalendarDatePicker2(
                    config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.range,
                      selectedDayHighlightColor: Colors.amber[900],
                      weekdayLabels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                      weekdayLabelTextStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      firstDayOfWeek: 1,
                      controlsHeight: 50,
                      controlsTextStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      dayTextStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      disabledDayTextStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      selectableDayPredicate: (day) => !day.difference(DateTime.now().subtract(const Duration(days: 3))).isNegative,
                      nextMonthIcon: Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                      ),
                      lastMonthIcon: Icon(
                        Icons.navigate_before,
                        color: Colors.white,
                      ),
                      yearTextStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    value: _dates,
                    onValueChanged: (dates) {
                      setState(() {
                        _dates = dates;
                      });
                    },
                  ),
                  Gap(40),
                  Container(
                    margin: EdgeInsets.only(bottom: 29),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Payment Options",
                              style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.white),
                            )
                          ],
                        ),
                        Gap(14),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          child: Material(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.white.withOpacity(0.1),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(9),
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                                      child: SvgPicture.asset(
                                        "assest/apps/car_booking/images/icons/paypal.svg",
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                    Gap(22),
                                    Expanded(
                                        child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              "PayPal",
                                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                            ))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                                child: Text(
                                              "234 **** **** **12",
                                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                                            ))
                                          ],
                                        ),
                                      ],
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Gap(14),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          child: Material(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.white.withOpacity(0.1),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(9),
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 10),
                                      child: SvgPicture.asset(
                                        "assest/apps/car_booking/images/icons/google-pay.svg",
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                    Gap(22),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                "Google Pay",
                                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                                              ))
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                  child: Text(
                                                "234 **** **** **12",
                                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.grey),
                                              ))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Icon(
                                        Icons.navigate_next,
                                        color: Colors.white,
                                      ),
                                    )
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
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Material(
              borderRadius: BorderRadius.circular(9),
              color: Colors.green,
              child: InkWell(
                borderRadius: BorderRadius.circular(9),
                onTap: () {
                  AutoRouter.of(context).push(SucessRoute());
                },
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Center(
                      child: Text(
                        "Buy",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
