import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/common_styles.dart';

class OrderDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 60),

          child: Text("Order Details",style: GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
              fontSize: 22,color:Color(0xFF122599),
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat')
          )),
        ),
        Text("ORDER ID : 2344677",style: GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
            fontSize: 13,color:Colors.grey,
            // fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat')
        )),

        Padding(
          padding: const EdgeInsets.only(left: 23,top: 15,right: 18),
          child: Column(children: [
            // Padding(
            //   padding: const EdgeInsets.only(left: 10),
            //   child: Container(height: 40,
            //     child:ClayContainer(height: 178,
            //       color: Color(0xFF94C120),
            //       borderRadius: 5,
            //       spread: 1.5,
            //       child: Row(children: [
            //         Text("Type Of Scrap"),SizedBox(width: 120,),
            //         Text("Quantity")
            //       ],),
            //     ),
            //   ),
            // ),

            ClayContainer(spread: 1,
              child: Column(
                children: [
          ClayContainer(height: 40,
                    color: Color(0xFF94C120),
                    borderRadius: 0,
                    spread: 1.5,
                    child: Row(children: [SizedBox(width: 10,),
                      Text("Type Of Scrap"),SizedBox(width: 50,),
                      Text("Quantity"),SizedBox(width: 50,),
                      Text("Price")
                    ],),
                  ),

                  Row(
                    children: [


                      Container(child: Padding(
                        padding: const EdgeInsets.only(top: 0.8,left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Paper"),
                            SizedBox(height: 9,),
                            Text("Ewaste)"),
                            SizedBox(height: 9,),
                            Text("Others"),
                            // SizedBox(height: 9,),
                            // Text("Date"),
                            // SizedBox(height: 9,),
                            // Text("Time"),

                          ],),
                      ),),

                      SizedBox(width: 80,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("10 kg"),
                              SizedBox(height: 9),
                              Text("5 kg"),
                              SizedBox(height: 9,),
                              Text("10 kg"),
                              // SizedBox(height: 9,),
                              // Text("20 mar 2021"),
                              // SizedBox(height: 9,),
                              // Text("12:30 pm")

                            ],),
                        ),
                      ),

                      SizedBox(width: 40,),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("₹ 10 /Kg"),
                              SizedBox(height: 9),
                              Text("₹ 20 /Kg"),
                              SizedBox(height: 9,),
                              Text("₹ 10 /Kg"),
                              // SizedBox(height: 9,),
                              // Text("20 mar 2021"),
                              // SizedBox(height: 9,),
                              // Text("12:30 pm")

                            ],),
                        ),
                      )


                    ],),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 190,top: 20),
              child: Text("Image Of Scrap",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xFF122599) ),),
            )
          ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 45,right: 45,top: 10),
          child: Container(width: 230,
            child: ClayContainer(height: 130,spread: 2,
            // color: Colors.pink,
            child:
                Image.asset("assets/scrapwaste.png")
             // Icon(Icons.camera),

            ),
          ),
        )
      ],),),
    );
  }
}