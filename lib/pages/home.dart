import 'package:carousel_slider/carousel_slider.dart';
import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:scrap_app/pages/price_list.dart';
import 'package:scrap_app/pages/profile.dart';

import '../common/common_styles.dart';


class HomeClass extends StatefulWidget{

  @override
  State<HomeClass> createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeClass> {
  List <String> scrapname=[
    "Paper",
    "E-waste",
    "Metals",
    "Vehicle",
    "Plastic",
    "Others"
  ];
  List <IconData> scrapicon =[
    Icons.newspaper,
    Icons.monitor,
    Icons.monitor_weight,
    Icons.car_crash,
    Icons.share_location_outlined,
    Icons.border_inner_sharp
  ];



  final List<Map> myProducts =
  List.generate(10, (index) => {"id": index, "name": "Product $index"})
      .toList();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:
        PreferredSize(preferredSize: Size.fromHeight(60.0) ,
          child: AppBar(
            title: Text("SCRAP"),
            bottomOpacity: 0.0,
            elevation: 0.0,
            backgroundColor: Color(0XFF94C120),
            actions: [
              Container(child: Row(children: [
                TextButton.icon(onPressed: (){}, icon: Icon(Icons.location_on,color: Colors.white,),
                    label: Text("KARNATAKA",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),))
              ],),)
            ],
          ),
        ),
          drawer: Profile(),
          // backgroundColor: Colors.white,
          body:

            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(height: 200,
                      child:
                        ListView(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:20),
                                child:

                                CarouselSlider(
                                  items: [

                                    //1st Image of Slider
                                    ClayContainer(color: Color(0xFF94C120),

                                      spread: 2,
                                      emboss: true,
                                      borderRadius: 20,
                                      depth: 120,
                                      child: Container(
                                        margin: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),color: Colors.white,
                                          image: DecorationImage(
                                            image: AssetImage("assets/banB.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),

                                    //2nd Image of Slider
                                    ClayContainer(color: Color(0xFF94C120),

                                      spread: 2,
                                      emboss: true,
                                      borderRadius: 20,
                                      depth: 120,
                                      child: Container(width:  double.infinity,
                                        margin: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),color: Colors.white,
                                          image: DecorationImage(
                                            image: AssetImage("assets/banA.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),

                                    //3rd Image of Slider
                                    ClayContainer(color: Color(0xFF94C120),

                                      spread: 2,
                                      emboss: true,
                                      borderRadius: 20,
                                      depth: 120,
                                      child: Container(
                                        margin: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0),color: Colors.white,
                                          image: DecorationImage(
                                            image: AssetImage("assets/banD.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),

                                    //4th Image of Slider
                                    ClayContainer(color: Color(0xFF94C120),
                                      spread: 2,
                                      emboss: true,
                                      borderRadius: 20,
                                      depth: 120,
                                      child: Container(
                                        margin: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),color: Colors.white,
                                          image: DecorationImage(
                                            image: AssetImage("assets/banC.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),

                                    //5th Image of Slider
                                    // ClayContainer(color:Color(0xFF94C120),
                                    //
                                    //   spread: 2,
                                    //   emboss: true,
                                    //   borderRadius: 20,
                                    //   depth: 120,
                                    //   child: Container(
                                    //     margin: EdgeInsets.all(4),
                                    //     decoration: BoxDecoration(
                                    //       borderRadius: BorderRadius.circular(12),color: Colors.white,
                                    //       image: DecorationImage(
                                    //         image: AssetImage("assets/bannerD.jpg"),
                                    //         fit: BoxFit.cover,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),

                                  ],

                                  //Slider Container properties
                                  options: CarouselOptions(
                                    height: 180.0,

                                    enlargeCenterPage: true,
                                    autoPlay: true,
                                    aspectRatio: 16 / 16,
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enableInfiniteScroll: true,
                                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                                    viewportFraction: 0.9,
                                  ),
                                ),

                              ),
                            ]
                        ),


                        // Expanded(child: SizedBox(height: 200,
                        //     child: ScrapCategory())),






                    ),
                    SizedBox(height: 10,),
                    Container(width: double.infinity,height: 35,alignment: Alignment.centerLeft,
                        color:  Color(0xFF94C120).withOpacity(0.3),
                        child: Text("   Sell Your Scrap and earn cash!!",style: CommonStyles.bigBluetext(),)),
                    SizedBox(height: 20,),

                    GridView.builder(physics:  NeverScrollableScrollPhysics(),primary: true,
                        shrinkWrap: true,



                        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 130,
                        childAspectRatio: 1/3),
                        itemCount: scrapname.length,
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
                                        child: Container(child: Icon(scrapicon[index])

                                        ),
                                      ),
                                      Text("${scrapname[index]}".toUpperCase(),style: CommonStyles.greentext(),),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3),
                                        child: Text("me",style: CommonStyles.graytext(),),
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PriceList()));
                            },
                              child: Text("Next",style: CommonStyles.loginText(),),),
                          ),
                        ),
                      ),
                    )




                  ],
                ),
              ),
            ),



    );
  }
}