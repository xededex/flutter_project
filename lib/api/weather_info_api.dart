import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:location/location.dart';

class  WeatherInfoApi {
  static String urlApi = "http://api.openweathermap.org/data/2.5/weather?lang=ru";
  static String apiKey = "ac56e5e50b833d4e94ee90f74d27cf03";
  static String testCityId = "524901";
  static Location location = new Location();


  Map<String, dynamic> weatherInfo = {};


  static Future<Map> getInfoPage() async {
     LocationData _locationData;
    _locationData = await location.getLocation();
    var uri_weather = Uri.parse("http://api.openweathermap.org/data/2.5/weather?lang=ru&appid=${apiKey}&lat=${_locationData.latitude}&lon=${_locationData.longitude}");
    // var test = isPermissionToGeo();
    print((uri_weather));
    // if (await isPermissionToGeo) {

    
    // Location location = new Location();

   
    print('try get location_');
    print(_locationData.latitude);
    print(_locationData.longitude);

    var res = await http.get(uri_weather);
    print(res.body);
    final Map parsed = json.decode(res.body); 

    // final packageInfo = await PackageInfo.fromPlatform();
    
    return parsed;
  }


  Future<bool> isPermissionToGeo () async {
    bool _serviceEnabled = true;
    PermissionStatus _permissionGranted;
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return false;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return false;
      }
    }
    return true;

  }


  Future<LocationData> _getLocation() async {
    Location location = new Location();

    LocationData _locationData;


    _locationData = await location.getLocation();
    return _locationData;

  }
}
