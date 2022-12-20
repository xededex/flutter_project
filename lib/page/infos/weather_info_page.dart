import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../api/weather_info_api.dart';
import '../../widget/info_widget.dart';
import '../../widget/weather_widget.dart';

class WeatherPage extends StatefulWidget {
  
  static String url = '';
  @override
  createState() => new WeatherAppState();
}




class WeatherAppState extends State<WeatherPage> {
   Map weatherInfo = {};

   void initState() {
    super.initState();
    init();
  }

  Future init() async {
    final weather = await WeatherInfoApi.getInfoPage();


    if (!mounted) return;

    setState(() => this.weatherInfo = weather);
  }

  @override
  Widget build(BuildContext context) {
    return InfoWidget(map: weatherInfo);
  }
}

