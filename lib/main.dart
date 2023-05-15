import 'package:flutter/material.dart';
import 'package:telegram_app/modules/dashboard/screen/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: const Color(0xff2675EC),
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
