import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrap_app/pages/onboarding_screen.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashPage>{


  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginPage()
    ));
  }

  @override
  Widget build(BuildContext context){
    return initWidget(context);
  }

  Widget initWidget(BuildContext context){

    return Scaffold(

      body: PageView(children: [
        Container(width: 200,
          child: Image.asset("assets/bottonban.png",fit: BoxFit.fill,),
        )
      ],
      ),
    );
  }


}