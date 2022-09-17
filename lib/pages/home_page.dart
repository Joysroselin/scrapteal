import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:scrap_app/pages/home.dart';
import 'package:scrap_app/pages/listviewcat.dart';
import 'package:scrap_app/pages/order_details.dart';
import 'package:scrap_app/pages/price_list.dart';
import 'package:scrap_app/pages/profile.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentIndex;
   late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
    _pageController = PageController();
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;

    });
  }
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     // appBar:
   // PreferredSize(preferredSize: Size.fromHeight(60.0) ,
   //   child:
   //   AppBar(automaticallyImplyLeading: false,
   //     title: Text("SCRAP"),
   //     bottomOpacity: 0.0,
   //     elevation: 0.0,
   //     backgroundColor: Color(0XFF94C120),
   //     actions: [
   //       Container(child: Row(children: [
   //         TextButton.icon(onPressed: (){}, icon: Icon(Icons.location_on,color: Colors.white,),
   //             label: Text("KARNATAKA",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),))
   //       ],),)
   //     ],
   //   ),
   // ),
       body: SizedBox.expand(
         child: PageView(
           controller: _pageController,
           onPageChanged: (index) {
             setState(() => currentIndex = index);
           },
           children: <Widget>[
             HomeClass(),
             PriceList(),
             OrderDetails(),
             Profile(),

           ],
         ),
       ),
//        appBar:
//    PreferredSize(preferredSize: Size.fromHeight(60.0) ,
//      child: AppBar(automaticallyImplyLeading: false,
//        title: Text("SCRAP"),
//        bottomOpacity: 0.0,
//         elevation: 0.0,
//         backgroundColor: Color(0XFF94C120),
//         actions: [
//           Container(child: Row(children: [
//             TextButton.icon(onPressed: (){}, icon: Icon(Icons.location_on,color: Colors.white,),
//                 label: Text("KARNATAKA",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,),))
//           ],),)
//         ],
//      ),
//    ),
//      body: SingleChildScrollView(
//        child: Container(
//          child: Column(
//            children: [
//              Container(height: 200,
//                child: ListView(
//                physics: BouncingScrollPhysics(),
//                children: [
//                Padding(
//                padding: const EdgeInsets.only(top:20),
//                child:
//
//                CarouselSlider(
//                  items: [
//
//                //1st Image of Slider
//                ClayContainer(color: Color(0xFF94C120),
//
//                  spread: 2,
//                  emboss: true,
//                  borderRadius: 20,
//                  depth: 120,
//                  child: Container(
//                    margin: EdgeInsets.all(4),
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(12),color: Colors.white,
//                      image: DecorationImage(
//                        image: AssetImage("assets/bannerB.jpg"),
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                ),
//
//                //2nd Image of Slider
//                ClayContainer(color: Color(0xFF94C120),
//
//                  spread: 2,
//                  emboss: true,
//                  borderRadius: 20,
//                  depth: 120,
//                  child: Container(
//                    margin: EdgeInsets.all(4),
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(12),color: Colors.white,
//                      image: DecorationImage(
//                        image: AssetImage("assets/bannerA.jpg"),
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                ),
//
//                //3rd Image of Slider
//                ClayContainer(color: Color(0xFF94C120),
//
//                  spread: 2,
//                  emboss: true,
//                  borderRadius: 20,
//                  depth: 120,
//                  child: Container(
//                    margin: EdgeInsets.all(4),
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(8.0),color: Colors.white,
//                      image: DecorationImage(
//                        image: AssetImage("assets/bannerB.jpg"),
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                ),
//
//                //4th Image of Slider
//                ClayContainer(color: Color(0xFF94C120),
//                  spread: 2,
//                  emboss: true,
//                  borderRadius: 20,
//                  depth: 120,
//                  child: Container(
//                    margin: EdgeInsets.all(4),
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(10),color: Colors.white,
//                      image: DecorationImage(
//                        image: AssetImage("assets/bannerC.png"),
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                ),
//
//                //5th Image of Slider
//                ClayContainer(color:Color(0xFF94C120),
//
//                  spread: 2,
//                  emboss: true,
//                  borderRadius: 20,
//                  depth: 120,
//                  child: Container(
//                    margin: EdgeInsets.all(4),
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(12),color: Colors.white,
//                      image: DecorationImage(
//                        image: AssetImage("assets/bannerD.jpg"),
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                  ),
//                ),
//
//                  ],
//
//                  //Slider Container properties
//                  options: CarouselOptions(
//                height: 180.0,
//                enlargeCenterPage: true,
//                autoPlay: true,
//                aspectRatio: 16 / 9,
//                autoPlayCurve: Curves.fastOutSlowIn,
//                enableInfiniteScroll: true,
//                autoPlayAnimationDuration: Duration(milliseconds: 800),
//                viewportFraction: 0.8,
//                  ),
//                ),
//
//    ),]),
//              ),
//              SizedBox(height: 10,)
// ,             Container(height:500,
//                  child:
//                ScrapCategory())
//            ],
//          ),
//        ),
//      ),



     // bottomNavigationBar: BubbleBottomBar(
     //   // hasNotch: true,
     //   fabLocation: BubbleBottomBarFabLocation.end,
     //   opacity: .2,
     //   currentIndex: currentIndex,
     //   onTap: changePage,
     //   borderRadius: BorderRadius.vertical(
     //     top: Radius.circular(16),
     //   ), //border radius doesn't work when the notch is enabled.
     //   elevation: 5,
     //   tilesPadding: EdgeInsets.symmetric(
     //     vertical: 8.0,
     //   ),
     //   items: <BubbleBottomBarItem>[
     //     BubbleBottomBarItem(
     //       // showBadge: true,
     //       // badge: Text("5"),
     //       // badgeColor: Colors.deepPurpleAccent,
     //        backgroundColor:  Color(0xFF122599),
     //       icon: Icon(
     //         Icons.home,
     //         color:  Color(0xFF94C120),
     //       ),
     //       activeIcon: Icon(
     //         Icons.home,
     //         color:  Color(0xFF122599),
     //       ),
     //       title: Text("Home"),
     //     ),
     //
     //     BubbleBottomBarItem(
     //         backgroundColor: Color(0xFF122599),
     //         icon: Icon(
     //           Icons.currency_rupee_rounded,
     //           color: Color(0xFF94C120),
     //         ),
     //         activeIcon: Icon(
     //           Icons.currency_rupee_rounded,
     //           color: Color(0xFF122599),
     //         ),
     //         title: Text("Logs")),
     //     BubbleBottomBarItem(
     //         backgroundColor:  Color(0xFF122599),
     //         icon: Icon(
     //           Icons.folder_open,
     //           color: Color(0xFF94C120),
     //         ),
     //         activeIcon: Icon(
     //           Icons.folder_open,
     //           color:  Color(0xFF122599),
     //         ),
     //         title: Text("Folders")),
     //     BubbleBottomBarItem(
     //         backgroundColor: Color(0xFF122599),
     //         icon: Icon(
     //           Icons.menu,
     //           color: Color(0xFF94C120),
     //         ),
     //         activeIcon: Icon(
     //           Icons.person_rounded,
     //           color:  Color(0xFF122599),
     //         ),
     //         title: Text("Profile"))
     //   ],
     // ),





       bottomNavigationBar: BottomNavyBar(

         selectedIndex: currentIndex,

         showElevation: true,
         itemCornerRadius: 24,
         curve: Curves.easeIn,
         onItemSelected: (index) {
           setState(() => currentIndex = index);
           _pageController.jumpToPage(index);
         },
         items: [
           BottomNavyBarItem(
             icon: Icon(Icons.home),
             title: Text('Home',style: TextStyle(color:  Color(0xFF122599)),),
             activeColor:Color(0xFF94C120),
             inactiveColor:  Color(0xFF122599),
           ),
           BottomNavyBarItem(
               icon: Icon(Icons.currency_rupee_sharp,),
               title: Text('Price List',style: TextStyle(color:  Color(0xFF122599)),),
             activeColor:Color(0xFF94C120),
             inactiveColor:  Color(0xFF122599),
           ),
           BottomNavyBarItem(
             icon: Icon(Icons.bookmark_border_outlined),
             title: Text('Order Details',style: TextStyle(color:  Color(0xFF122599)),),
             activeColor:Color(0xFF94C120),
             inactiveColor:  Color(0xFF122599),
           ),
           BottomNavyBarItem(
               icon: Icon(Icons.person,),
               title: Text('Profile',style: TextStyle(color:  Color(0xFF122599)),),
               activeColor:Color(0xFF94C120),
               inactiveColor:  Color(0xFF122599),
           ),

           // BottomNavyBarItem(
           //     icon: Icon(Icons.settings),
           //     title: Text('Settings'),
           //     activeColor: Color(0xFF122599),
           //     inactiveColor: Color(0xFF94C120)
           // ),
         ],
       )






   );
  }
}
