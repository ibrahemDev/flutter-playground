import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/rents_notifier.dart';
import 'package:flutter_playground/apps/car_booking/features/rent_cars/states/selected_rent.dart';
import 'package:flutter_playground/apps/car_booking/ui/widgets/car_card_widget.dart';
import 'package:flutter_playground/apps/car_booking/util/random_lat_long.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:latlong2/latlong.dart';
import 'dart:ui' as ui;

final a = MapController();

class MapCarPageView extends StatefulWidget {
  const MapCarPageView({super.key});

  @override
  State<MapCarPageView> createState() => _MapCarPageViewState();
}

class _MapCarPageViewState extends State<MapCarPageView> {
  late MapController mapController;
  late double _markerSize;
  @override
  void initState() {
    super.initState();
    mapController = MapController();
    _markerSize = 200.0; // Default marker size
  }

  void _updateMarkerSize(double zoom) {
    // Update the marker size based on zoom
    setState(() {
      _markerSize = 200.0 * (zoom / 13.0);
    });
  }

  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(text: TextSpan(text: text, style: style), maxLines: 1, textDirection: TextDirection.ltr)..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: FlutterMap(
            mapController: mapController,
            options: MapOptions(
              initialCenter: getRandomLocation(const LatLng(24.713632632190304, 46.67737950174166), 400),
              initialZoom: 17,
              interactionOptions: InteractionOptions(
                flags: InteractiveFlag.all - InteractiveFlag.rotate,
              ),
              onPositionChanged: (position, hasGesture) {
                if (hasGesture) {
                  _updateMarkerSize(position.zoom ?? 1);
                }
              },
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              ),
              Consumer(
                builder: (context, ref, child) {
                  final allRent = ref.watch(RentsNotifier.rentsViewModleListNotifierProvider);
                  final selectedRent = ref.watch(selectedRentIdStateProvider);
                  return allRent.when(
                    data: (rents) {
                      return MarkerLayer(
                        markers: rents.map((e) {
                          final text = e.displayName;
                          final textStyle = Theme.of(context).textTheme.bodyMedium!;
                          final size = _textSize(text, textStyle);

                          return Marker(
                            point: e.location,
                            width: 22 + size.width + 64,
                            height: 34 + size.height + 64,
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 64,
                                      width: 64,
                                      decoration: BoxDecoration(
                                        //color: Colors.white,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage(e.img),
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      text,
                                      style: textStyle,
                                    ),
                                  ],
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      ref.read(selectedRentIdStateProvider.notifier).state = e.id;
                                    },
                                    child: selectedRent == e.id
                                        ? SvgPicture.asset(
                                            "assest/apps/car_booking/images/icons/selected_marker.svg",
                                            fit: BoxFit.scaleDown,
                                          )
                                        : SvgPicture.asset(
                                            "assest/apps/car_booking/images/icons/marker.svg",
                                            fit: BoxFit.scaleDown,
                                          ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }).toList(),
                      );
                    },
                    error: (err, s) {
                      return MarkerLayer(
                        markers: [],
                      );
                    },
                    loading: () {
                      return MarkerLayer(
                        markers: [],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                elevation: 7,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                //color: Colors.black.withOpacity(0.1),
                                shape: BoxShape.circle,
                              ),
                              child: InkWell(
                                customBorder: CircleBorder(),
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assest/apps/car_booking/images/icons/menu.svg",
                                  fit: BoxFit.scaleDown,

                                  //serche.svg
                                  colorFilter: ui.ColorFilter.mode(Colors.black, BlendMode.srcIn),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                onChanged: (value) {
                                  //ref.read(searchTextProdactsProvider.notifier).update((state) => state = value);
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  suffixIcon: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      customBorder: CircleBorder(),
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                        "assest/apps/car_booking/images/icons/serche.svg",
                                        fit: BoxFit.scaleDown,

                                        //serche.svg
                                        colorFilter: ui.ColorFilter.mode(Colors.black, BlendMode.srcIn),
                                      ),
                                    ),
                                  ),
                                  /*Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),*/
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
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 9, horizontal: 11),
                        child: Row(
                          children: [
                            Expanded(
                              child: Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text("High Rated"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Gap(12),
                            Expanded(
                              child: Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text("Near me!"),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Gap(12),
                            Expanded(
                              child: Material(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text("Cheapest"),
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
              Consumer(
                builder: (context, ref, child) {
                  return ref.watch(selectedRentStateProvider).when(data: (rent) {
                    if (rent == null) {
                      return Container();
                    }
                    return Container(
                      //margin: EdgeInsets.only(left: 24, right: 24, bottom: 24),
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 19, vertical: 12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        ref.read(selectedRentIdStateProvider.notifier).state = -1;
                                      },
                                      icon: Icon(Icons.close),
                                      iconSize: 17),
                                ],
                              ),
                              CarCardWidget(
                                rentCarViewModel: rent,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }, error: (e, s) {
                    return Container();
                  }, loading: () {
                    return Container();
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
