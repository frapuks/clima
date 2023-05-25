import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude = 48.5734;
  late double longitude = 7.7521;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
