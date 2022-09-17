import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrap_app/common/common_styles.dart';
import 'package:scrap_app/pages/listviewcat.dart';
import 'package:scrap_app/pages/scarp_price/paper_pricelist.dart';
import 'package:scrap_app/pages/schedule_date.dart';
import 'package:scrap_app/pages/tab_bar.dart';

class PriceList extends StatefulWidget{
  @override
  State<PriceList> createState() => _PriceListState();
}

class _PriceListState extends State<PriceList> {
  List <String> papertypesname=[
    "NewsPaper",
    "Cardboard",
    "Text Book",
    "Paper Bag",
    "Note Bag",
    "Others"
  ];
  List <IconData> papertypesicon =[
    Icons.indeterminate_check_box,
    Icons.book,
    Icons.monitor_weight,
    Icons.car_crash,
    Icons.share_location_outlined,
    Icons.border_inner_sharp
  ];
  List<String> price=["₹10/Kg",
    "₹20/Kg",
    "₹10/Kg",
    "₹30/Kg",
    "₹10/Kg",
    "₹10/Kg",
    "₹15/Kg",];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Color(0XFF94C120),
       title:Text("Price List Of Scrap") ,

     ),
     body: SingleChildScrollView(child: Padding(
       padding: const EdgeInsets.only(left: 10),
       child: Container(
         child: Column(

           children: [
            SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 10,bottom: 5),
             child: Container(alignment: Alignment.topLeft,
               child: Text("Paper".toUpperCase(),style: CommonStyles.greenlargetext(),),),
           ),
             // SizedBox(height: 20,),

             GridView.builder(physics:  NeverScrollableScrollPhysics(),primary: true,
                 shrinkWrap: true,



                 gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisSpacing: 10,
                     crossAxisCount: 3,
                     mainAxisSpacing: 10,
                     mainAxisExtent: 130,
                     childAspectRatio: 1/3),
                 itemCount: papertypesname.length,
                 itemBuilder: (BuildContext ctx, index) {
                   return Padding(
                     padding: const EdgeInsets.all(4.0),
                     child: Column(children: [
                       ClayContainer(curveType: CurveType.concave,
                         borderRadius: 10,
                         child: Container(height: 105,width: 105,decoration:
                         BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),
                             border: Border.all(color: Color(0XFF94C120)),
                             color: Color(0XFF94C120).withOpacity(0.1)
                           // image: DecorationImage(image:AssetImage(choice.image),fit: BoxFit.cover )
                         ),
                           child: Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 20,bottom: 5),
                                 child: Container(child: Icon(papertypesicon[index])

                                 ),
                               ),
                               Text("${papertypesname[index]}".toUpperCase(),style: CommonStyles.greentext(),),
                               Padding(
                                 padding: const EdgeInsets.only(top: 3),
                                 child: Text(price[index],style: CommonStyles.graytext(),),
                               )
                             ],
                           ),


                         ),

                         // Container(height: 15,
                         //   child: Text(choice.title,style:
                         //   TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
                         // )
                       )

                     ],
                     ),
                   );
                 }),



             Padding(
               padding: const EdgeInsets.only(left: 10,bottom: 5,top: 15),
               child: Container(alignment: Alignment.topLeft,
                 child: Text("E-waste".toUpperCase(),style: CommonStyles.greenlargetext(),),),
             ),
             GridView.builder(physics:  NeverScrollableScrollPhysics(),primary: true,
                 shrinkWrap: true,



                 gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisSpacing: 10,
                     crossAxisCount: 3,
                     mainAxisSpacing: 10,
                     mainAxisExtent: 130,
                     childAspectRatio: 1/3),
                 itemCount: papertypesname.length,
                 itemBuilder: (BuildContext ctx, index) {
                   return Padding(
                     padding: const EdgeInsets.all(4.0),
                     child: Column(children: [
                       ClayContainer(curveType: CurveType.concave,
                         borderRadius: 10,
                         child: Container(height: 105,width: 105,decoration:
                         BoxDecoration(shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(10),
                             border: Border.all(color: Color(0XFF94C120)),
                             color: Color(0XFF94C120).withOpacity(0.1)
                           // image: DecorationImage(image:AssetImage(choice.image),fit: BoxFit.cover )
                         ),
                           child: Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 20,bottom: 5),
                                 child: Container(child: Icon(papertypesicon[index])

                                 ),
                               ),
                               Text("${papertypesname[index]}".toUpperCase(),style: CommonStyles.greentext(),),
                               Padding(
                                 padding: const EdgeInsets.only(top: 3),
                                 child: Text(price[index],style: CommonStyles.graytext(),),
                               )
                             ],
                           ),


                         ),

                         // Container(height: 15,
                         //   child: Text(choice.title,style:
                         //   TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
                         // )
                       )

                     ],
                     ),
                   );
                 }),
             Padding(
               padding: const EdgeInsets.only(top: 10,bottom: 10),
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
                       child: Text("Continue",style: CommonStyles.loginText(),),),
                   ),
                 ),
               ),
             )

           ],),
       ),
     ),),
   );
  }
}