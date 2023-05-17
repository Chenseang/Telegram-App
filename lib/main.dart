import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:telegram_app/modules/dashboard/screen/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xff2675EC),
          primaryColorLight: const Color(0xffFFFFFF),
          primaryColorDark: const Color(0xff131313),
          shadowColor: const Color(0xffF6F6F6),
          textTheme: TextTheme(
            displayLarge: TextStyle(
                fontSize: 30,
                color: Theme.of(context).primaryColor,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.bold),
            labelLarge: const TextStyle(
              fontSize: 23,
              fontFamily: 'Gilroy',
              color: Color(0xff131313),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: const DashboardScreen());
  }
}
