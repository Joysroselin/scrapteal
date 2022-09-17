import 'package:flutter/material.dart';
import 'package:scrap_app/pages/listviewcat.dart';
import 'package:scrap_app/pages/price_list.dart';
import 'package:scrap_app/pages/schedule_date.dart';
import 'package:scrap_app/pages/tabone.dart';

import 'confirm_details.dart';

class TabBarPage extends StatefulWidget{
  @override
  State<TabBarPage> createState() => TabBarPageState();
}

class TabBarPageState extends State<TabBarPage> {
  int currentindex=3;
  @override
  Widget build(BuildContext context) =>DefaultTabController(length: 3, child:

  Scaffold(
  appBar: AppBar(
    bottom: TabBar(
  tabs: [
    Tab(text: 'Select Scarps',),
  Tab(text: 'Schedule Date',),
  Tab(text: 'Confirm Details',)
  ],
  ),
  flexibleSpace:Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellowAccent,Colors.lightGreen],)),
  ),

  ),
  body: TabBarView(children: [
  //   Center(child: Text('Tab 1 content'),),
  // Center(child: Text('Tab 2 content'),),
  // Center(child: Text('Tab 3 content'),),

    Container(),
    ScheduleDate(),
    ConfirmDetails()


  ]),




  )
  );
}



