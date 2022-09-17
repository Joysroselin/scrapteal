import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrap_app/common/common_styles.dart';
import 'package:scrap_app/pages/listviewcat.dart';
import 'package:scrap_app/pages/scarp_price/paper_pricelist.dart';
import 'package:scrap_app/pages/schedule_date.dart';
import 'package:scrap_app/pages/tab_bar.dart';

class SelectScraps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0XFF94C120),
      //   title:Text("Price List Of Scrap") ,
      //
      // ),
      body: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(

          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 10,bottom: 5),
              child: Container(alignment: Alignment.topLeft,
                child: Text("Paper".toUpperCase(),style: CommonStyles.greenlargetext(),),),
            ),
            SizedBox(height: 360,
              child: PaperPriceList(),),

            // Padding(
            //   padding: const EdgeInsets.only(left: 10,bottom: 5,top: 15),
            //   child: Container(alignment: Alignment.topLeft,
            //     child: Text("E-waste".toUpperCase(),style: CommonStyles.greenlargetext(),),),
            // ),
            // SizedBox(height: 360,
            //
            //   child: ScrapCategory(),),

            Padding(
              padding: const EdgeInsets.only(top: 70,bottom: 10),
              child: Container(height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50),
                  child: ClayContainer(borderRadius: 10,
                    spread: 2,
                    depth: 50,
                    width: double.infinity,
                    curveType: CurveType.concave,
                    color: Color(0XFF94C120),

                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ScheduleDate()));
                    },
                      child: Text("Next",style: CommonStyles.loginText(),),),
                  ),
                ),
              ),
            )

          ],),
      ),),
    );
  }
}