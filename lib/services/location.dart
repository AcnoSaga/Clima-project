import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position location = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = location.latitude;
      longitude = location.longitude;
    } catch (e) {
      throw 'Could not find location';
    }
  }
}
