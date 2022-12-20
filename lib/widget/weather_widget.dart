// import 'package:flutter/material.dart';

// class InfoWidget extends StatelessWidget {
//   final Map<dynamic, dynamic> map;

//   const InfoWidget({
//     Key? key,
//     required this.map,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) => map.isEmpty
//       ? const Center(child: CircularProgressIndicator())
//       : ListView(
//           physics: const BouncingScrollPhysics(),
//           padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
//           children: map.keys.map(
//             (key) {
//               final value = map[key];
//               return Container(
//                 padding: const EdgeInsets.all(8),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       key,
//                       style: const TextStyle(
//                           fontWeight: FontWeight.bold, fontSize: 17),
//                     ),
//                     const SizedBox(width: 12),
//                     Expanded(
//                       child: Text(
//                         '$value',
//                         maxLines: 10,
//                         overflow: TextOverflow.ellipsis,
//                         style: const TextStyle(fontSize: 17),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ).toList(),
//         );
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';


class ConstantDoubles {
  static const double d_1 = 1;
  static const double d_3 = 3;
  static const double d_5 = 5;
  static const double d_8 = 8;
  static const double d_10 = 10;
  static const double d_11 = 11;
  static const double d_12 = 12;
  static const double d_15 = 15;
  static const double d_18 = 18;
  static const double d_20 = 20;
  static const double d_25 = 25;
  static const double d_30 = 30;
  static const double d_40 = 40;
  static const double d_50 = 50;
  static const double d_70 = 70;
  static const double d_100 = 100;
  static const double d_120 = 120;
  static const double d_150 = 150;
  static const double d_200 = 200;
  static const double d_1000 = 1000;
}

class ConstantInt {
  static const int i_5 = 5;
  static const int i_10 = 10;
  static const int i_1000 = 1000;
}

class ColorsConstants {
  static Color daySecondaryColor = const Color.fromARGB(255, 117, 175, 226);
  static Color? sunriseIcon = const Color.fromRGBO(255, 183, 77, 1);
  static Color? sunsetIcon = const Color.fromRGBO(229, 115, 115, 1);
  static Color dayMainColor = const Color.fromRGBO(132, 168, 225, 1);
  static Color whiteColor = const Color.fromRGBO(255, 255, 255, 1);
  static Color greyColor = const Color.fromARGB(255, 231, 231, 231);
  static Color lightGreyColor = const Color.fromARGB(192, 247, 246, 246);
  static Color redColor = const Color.fromARGB(255, 236, 75, 75);
  static Color greenColor = const Color.fromARGB(255, 69, 226, 38);
  static Color drawerColor = const Color.fromRGBO(41, 52, 62, 1);
  static Color elevatedButtonColor = const Color.fromARGB(255, 117, 117, 117);
  static Color cardColor =
      const Color.fromARGB(228, 151, 199, 241).withOpacity(.9);
}


class ConstantUrls {
  static const String sunAnimationUrl =
      'https://assets6.lottiefiles.com/packages/lf20_XHlUGu.json';
}

// class WeatherWidget extends StatelessWidget {
//   final Map<dynamic, dynamic> map;

//   const WeatherWidget({
//     Key? key,
//     required this.map,
//   }) : super(key: key);
//   // final FullWeatherLoadingSuccessState state;
//   Drawer getVoid(context) {
//     return Drawer(
//      backgroundColor: ColorsConstants.drawerColor,
//       child: Padding(
//         padding: const EdgeInsets.only(top: ConstantDoubles.d_120),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   //______________________Favorite city section__________________________________
//                   const Icon(
//                     Icons.star_rounded,
//                     size: ConstantDoubles.d_20,
//                     color: Colors.white,
//                   ),
//                   const SizedBox(width: ConstantDoubles.d_50),
//                   Text(
//                     DrawerStrings.favoriteLocation,
//                     style: TextStyle(
//                       fontSize: ConstantDoubles.d_15,
//                       color: ColorsConstants.lightGreyColor,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: ConstantDoubles.d_20),
//               const FavoriteCity(),
//               const SizedBox(height: ConstantDoubles.d_20),
//               FavoriteCityForm(),

//               //______________________________________________________________________
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: ConstantDoubles.d_20),
//                 child: Container(
//                   color: ColorsConstants.whiteColor,
//                   height: ConstantDoubles.d_3,
//                   width: double.infinity,
//                 ),
//               ),

//               //___________________________________________________________________________
//               const SizedBox(height: ConstantDoubles.d_20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: ConstantDoubles.d_8),
//                       child: Icon(
//                         Icons.location_on_outlined,
//                         color: ColorsConstants.whiteColor,
//                         size: ConstantDoubles.d_30,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     DrawerStrings.otherLocations,
//                     style: TextStyle(color: ColorsConstants.lightGreyColor),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: ConstantDoubles.d_15),
//               const OtherLocations(),
//               ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: ColorsConstants.elevatedButtonColor,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(ConstantDoubles.d_12),
//                     ),
//                   ),
//                   onPressed: () =>
//                       Navigator.of(context).pushNamed(ManageLocations.routName),
//                   child: const Text(DrawerStrings.elevatedButtonText)),
//             ],
//           ),
//         ),
//       )
//   Stack getStack(BuildContext context) {
//      return Stack(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(
//               top: ConstantDoubles.d_100, left: ConstantDoubles.d_20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Current temp.
//               Text(
//                 'qweqwewq {state.fullWeather.list[0].main.temp.toStringAsFixed(0)}\u00b0 ',
//                 style: TextStyle(
//                     color: ColorsConstants.whiteColor,
//                     fontSize: ConstantDoubles.d_30),
//               ),
//               Text('test'),

//               // City name
//               Row(
//                 children: [
//                   Text(
//                     'state.fullWeather.city.name',
//                     style: TextStyle(
//                         color: ColorsConstants.whiteColor,
//                         fontSize: ConstantDoubles.d_30),
//                   ),
//                   Icon(
//                     Icons.location_on,
//                     color: ColorsConstants.whiteColor,
//                     size: ConstantDoubles.d_18,
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: ConstantDoubles.d_40,
//               ),

//               // Min & max temp for current time
//               Text(
//                 '{state.fullWeather.list[0].main.tempMax.toStringAsFixed(0)}\u00b0 /{state.fullWeather.list[0].main.tempMin.toStringAsFixed(0)}\u00b0 Feels like {state.fullWeather.list[0].main.feelsLike.toStringAsFixed(0)}\u00b0',
//                 style: TextStyle(
//                     color: ColorsConstants.whiteColor,
//                     fontWeight: FontWeight.bold),
//               ),

//               // Date time
//               Padding(
//                 padding: const EdgeInsets.only(top: ConstantDoubles.d_8),
//                 child: Text(
//                   '${DateFormat.E().format(DateTime.now())}, ${DateFormat.jm().format(DateTime.now())}',
//                   style: TextStyle(
//                     color: ColorsConstants.whiteColor,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         // Animation image
//         Positioned(
//           left: ConstantDoubles.d_200,
//           top: ConstantDoubles.d_70,
//           child: Align(
//             alignment: Alignment.centerRight,
//             child: SizedBox(
//               width: ConstantDoubles.d_150,
//               height: ConstantDoubles.d_150,
//               child: Lottie.network(ConstantUrls.sunAnimationUrl,
//                   fit: BoxFit.fill),
//             ),
//           ),
//         )
//       ],
//     );
//   }
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         drawer: const DrawerWidget(),
//         body: SafeArea(
//           child: Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//                 colors: [
//                   ColorsConstants.dayMainColor,
//                   ColorsConstants.daySecondaryColor,
//                 ],
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: BlocConsumer<WeatherBloc, WeatherState>(
//                 listener: (context, state) {},
//                 builder: (context, state) {
//                   if (state is LoadingState) {
//                     return const Center(child: CircularProgressIndicator());
//                   } else if (state is FullWeatherLoadingSuccessState) {
//                     return SingleChildScrollView(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           CurrentWeatherContainer(state: state),
//                           // TempChart(state: state),
//                           FiveDaysForecast(state: state),
//                           SunState(state: state),
//                           GeneralWeatherState(state: state),
//                         ],
//                       ),
//                     );
//                   } else if (state is FullWeatherLoadingFailState) {
//                     return Center(
//                       child: Text(state.failMessage),
//                     );
//                   }
//                   return const SizedBox();
//                 },
//               ),
//             ),
//           ),
//         ));
  
  
  
//   }
    
// }
