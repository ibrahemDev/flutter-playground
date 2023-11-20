import 'dart:math' as math;

import 'package:latlong2/latlong.dart';

// thanks to https://stackoverflow.com/questions/66386482/how-do-i-set-randomly-generated-points-on-a-google-maps-map-in-flutter-while-sp
LatLng getRandomLocation(LatLng point, int radius) {
  //This is to generate 10 random points
  double x0 = point.latitude;
  double y0 = point.longitude;

  math.Random random = math.Random();

  // Convert radius from meters to degrees
  double radiusInDegrees = radius / 111000;

  double u = random.nextDouble();
  double v = random.nextDouble();
  double w = radiusInDegrees * math.sqrt(u);
  double t = 2 * pi * v;
  double x = w * math.cos(t);
  double y = w * math.sin(t) * 1.75;

  // Adjust the x-coordinate for the shrinking of the east-west distances
  double newX = x / math.sin(y0);

  double foundLatitude = newX + x0;
  double foundLongitude = y + y0;
  LatLng randomLatLng = LatLng(foundLatitude, foundLongitude);

  return randomLatLng;
}
