import '../../api/platform_indentify.dart';
import '../infos/device_info_page.dart';
import '../infos/application_info_page.dart';
import '../infos/network_info_page.dart';
import '../infos/weather_info_page.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${PlatformIndentify.device}\'s Информация'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Flutter тест'),
                accountEmail: Text('тест'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/app-icon-1024x1024.png",
                  ),
                ),
              ),
              ListTile(
                selectedColor: Colors.blue,
                selected: index == 1,
                leading: const Icon(Icons.device_unknown_rounded),
                title: const Text('Информация об устройстве'),
                onTap: () {
                  Navigator.pop(context);
                  if (index != 1) {
                    setState(() => index = 1);
                  }
                },
              ),
              ListTile(
                selectedColor: Colors.blue,
                selected: index == 2,
                leading: const Icon(Icons.contact_support_outlined),
                title: const Text('Информация об приложении'),
                onTap: () {
                  Navigator.pop(context);
                  if (index != 2) {
                    setState(() => index = 2);
                  }
                },
              ),
              ListTile(
                selectedColor: Colors.blue,
                selected: index == 3,
                leading: const Icon(Icons.network_check_rounded),
                title: const Text('Сеть'),
                onTap: () {
                  Navigator.pop(context);
                  if (index != 3) {
                    setState(() => index = 3);
                  }
                },
              ),
              
              ListTile(
                selectedColor: Colors.blue,
                selected: index == 3,
                leading: const Icon(Icons.network_check_rounded),
                title: const Text('Прогноз погоды'),
                onTap: () {
                  Navigator.pop(context);
                  if (index != 4) {
                    setState(() => index = 4);
                  }
                },
              ),



            ],
          ),
        ),
        body: index == 1
            ? const DeviceInfoPage()
            : index == 2
                ? const ApplicationInfoPage()
                : index == 3
                    ? const NetworkInfoPage()
                    : index == 4
                        ? new WeatherPage()
                        : const Center(
                        child: Text(
                            'Hello there..!\nIf you can see this text you\'re genius.😜',
                            textAlign: TextAlign.center)));
                        
                        
                        
                       
                        


                    // : const Center(
                    //     child: Text(
                    //         'Hello there..!\nIf you can see this text you\'re genius.😜',
                    //         textAlign: TextAlign.center)));
  }
}
