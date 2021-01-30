import 'dart:math' show pi, cos, sin, sqrt, pow, asin;

import 'constants.dart' show random;

final R = 6372800;

/// Generate random location represented with `latitude` and `longitude` in a given `radius`.
///
/// Returns `Map<String, double>` representing latitude and longitude, respectively.
///
/// [latitude] and [longitude] represent points on map in a given [radius].
///
/// Example usage:
Map<String, double> mockLocation([double latitude = 0.0,
      double longitude = 0.0,
      int radius = 1000]) {

  Map<String, double> location = Map.fromIterables(['longitude', 'latitude'],
      [90, 180].map((e) => random.nextDouble() * e * random.nextInt(2)));

  if (latitude != 0.0 || longitude != 0.0) {

    // Convert radius from meters to degrees
    double radiusInDegrees = radius / 111000.0;

    double u = random.nextDouble();
    double v = random.nextDouble();
    double w = radiusInDegrees * sqrt(u);
    double t = 2 * pi * v;
    double x = w * cos(t);
    double y = w * sin(t);

    // Adjust the x-coordinate for the shrinking of the east-west distances
    location['longitude'] = x / cos(_toRadians(latitude)) + longitude;
    location['latitude'] = y + latitude;

  }

  return location;

}

/// Distance between two locations calculated with Haversine formula.
double distance(double lat1, double lon1, double lat2, double lon2) {
  double dLat = _toRadians(lat2 - lat1);
  double dLon = _toRadians(lon2 - lon1);
  lat1 = _toRadians(lat1);
  lat2 = _toRadians(lat2);
  double a = pow(sin(dLat / 2), 2) + pow(sin(dLon / 2), 2) * cos(lat1) * cos(lat2);
  double c = 2 * asin(sqrt(a));
  return R * c;
}

double _toRadians(double degree) {
  return degree * pi / 180;
}
