import 'package:flutter/material.dart';
import 'package:scrap_app/pages/home_page.dart';
import 'package:scrap_app/pages/onboarding_screen.dart';
import 'package:scrap_app/pages/profile.dart';
import 'package:scrap_app/pages/splash_screen.dart';


import 'pages/login_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Splash Screen',
      theme: ThemeData(

        brightness: Brightness.light,
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
      routes: {
        'first':(context)=>Profile(),
        'second':(context)=>Onboarding(),
      },
    );
  }
}