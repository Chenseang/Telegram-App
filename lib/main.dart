import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:telegram_app/core/auth/login/login_screen.dart';

import 'generated/l10n.dart';

// import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        onInit: () {
          Get.updateLocale(const Locale('kk'));
        
        },
        debugShowCheckedModeBanner: false,
        locale: Get.locale,
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
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
        home: const LoginApp());
  }
}
