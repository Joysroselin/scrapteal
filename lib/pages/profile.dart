import 'package:clay_containers/clay_containers.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrap_app/common/profile_clay.dart';
import 'package:scrap_app/pages/confirm_details.dart';

import '../common/common_styles.dart';
import 'home_page.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    // appBar: AppBar(title: Text("Profile"),
    //   elevation: 0.0,
    //   backgroundColor: Colors.white70
    //   ,),
    // backgroundColor: Color(0xFF94C120).withOpacity(0.8),
    body: SingleChildScrollView(child: Column(children: [
  //     Padding(
  //       padding: const EdgeInsets.only(top: 40,bottom: 10),
  //       child: Text("Profile".toUpperCase(),style: GoogleFonts.montserrat(fontSize: 17,color:Color(0xFF122599),
  //           // gradient:
  //           // LinearGradient(colors: [
  //           //   Color(0XFF94C120),
  //           //   Color(0XFF94C120),
  //           //   Color(0XFF94C120),
  //           //   Color(0xFF122599).withOpacity(0.9),],begin: Alignment.topLeft,end: Alignment.bottomRight
  //           // ),
  //
  //       fontWeight: FontWeight.bold),),
  //     ),
  //     Padding(
  //       padding: const EdgeInsets.only(left: 10,right: 10),
  //       child:
  //
  //       Container(
  //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,
  //               boxShadow: [BoxShadow(
  //               color:Color(0xFF122599),
  //           blurRadius: 1,
  //           spreadRadius: 2,
  //           offset: Offset(2,2)
  //       ),
  //
  //         BoxShadow(
  //         color: Color(0XFF94C120),
  //     blurRadius: 1,
  //     spreadRadius: 2,
  //     offset: Offset(-2,-2)
  // )],),
  //         child: ClayContainer(height: 200,
  //           borderRadius: 5,
  //           spread: 1,
  //
  //           child: Column(
  //             children: [
  //
  //               Row(children: [
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 20,top: 20),
  //                 child: Container(height: 80,width: 80,
  //                   decoration: BoxDecoration(shape: BoxShape.circle,  color: Colors.white70,),
  //                 ),
  //               ),SizedBox(width: 15,),
  //               Padding(
  //                 padding: const EdgeInsets.only(top: 20),
  //                 child: Container(child:
  //                 Column(
  //                   children: [
  //                     Padding(
  //                       padding: const EdgeInsets.only(right: 25),
  //                       child: Text("Name:",style: CommonStyles.profTextgreen(),),
  //                     ),
  //                 Text("Phone No.",style: CommonStyles.profTextgreen(),)],),),
  //               ),
  //                 SizedBox(width: 100,),
  //               Icon(Icons.edit)
  //         ],),
  //               SizedBox(height: 15,),
  //               Divider(thickness: 2,color:Color(0XFF94C120) ,),
  //               Padding(
  //                 padding: const EdgeInsets.only(left: 65,right: 65,top: 10),
  //                 child: ClayContainer(height: 43,
  //                    borderRadius: 10,
  //                   spread: 0.5,
  //                   depth: 0,
  //                   width: double.infinity,
  //                   curveType: CurveType.concave,
  //                   color: Color(0xFF122599).withOpacity(0.8),
  //
  //                   child: TextButton(onPressed: (){
  //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
  //                   },
  //                     child: Text("Address",style: GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
  //                         fontSize: 14,color: Colors.white,
  //                         fontWeight: FontWeight.bold,
  //                         fontFamily: 'Montserrat')
  //                     )),),
  //                 ),
  //               ),
  //             ],
  //
  //           ),
  //
  //
  //         ),
  //       ),
  //     ),



      Container(
      height: 1000,color: Colors.white,
      child: Column(children: [
      Padding(
      padding: const EdgeInsets.only(top: 35,left: 30),
    child: Row(children: [
    Text("Profile",style: GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
        fontSize: 22,color:Color(0xFF122599),
         fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat')
    )),
    SizedBox(width: 175,),
    TextButton.icon(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black,), label: Text("Edit",style: TextStyle(color: Colors.black,),))
    ],),
    ),
// Image.asset("assets/profbaground.png"),
    Container(
    decoration: BoxDecoration(image: DecorationImage(
    image: AssetImage("assets/greenbackg.png",),fit: BoxFit.fill)),
    child: Padding(
    padding: const EdgeInsets.only(top: 10,bottom: 0),
    child: Container(height: 100,
    decoration: BoxDecoration(color:  Colors.white,
    // image: DecorationImage(image: AssetImage("assets/profbaground.png")),
    shape: BoxShape.circle,border: Border.all(color: Colors.teal.shade100,)),
    ),
    ),),
    SizedBox(height: 10),
    Text("Harish",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
    SizedBox(height: 3,),
    Text("+91 8608608100"),
        Padding(
          padding: const EdgeInsets.only(left: 17,right: 17,top: 5),
          child: ClayContainer(height: 50,
                                 borderRadius: 10,
                                spread: 0.5,
                                depth: 0,
                                width: double.infinity,
                                curveType: CurveType.concave,
                                color: Color(0xFF122599).withOpacity(0.8),

                                child: TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                },
                                  child: Text("Address",style: GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
                                      fontSize: 14,color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat')
                                  )),),),
        ),

        SizedBox(height: 20,),
        ProfileClay(iconData: Icons.account_box_outlined,
          hintText:'About us' ,
        ),

        ProfileClay(iconData: Icons.star_border_purple500_outlined,
          hintText:'Rate us',
        ),

        ProfileClay(iconData: Icons.call,
          hintText:'Call us' ,
        ),
        ProfileClay(iconData: Icons.share_sharp,
          hintText:'Share app' ,
        )
        ,ProfileClay(iconData: Icons.account_box_outlined,
          hintText:'About us' ,
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20,right: 85,left: 85),
          child: InkWell(onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmDetails()));
          },
            child: ClayContainer(height: 48,
              borderRadius: 10,
              color: Color(0XFF94C120),
              spread: 1,

              child: ListTile(
                leading: Icon(Icons.logout,color: Colors.red,),
                title: Text('LOGOUT'),
              ),


            ),
          ),
        ),

      ])),


    ],),),
  );
  }
}