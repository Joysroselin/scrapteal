// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
//
// import 'menu_page.dart';
//
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   // MyHomePage({Key key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     //set time to load the new page
//     Future.delayed(Duration(seconds: 2), () {
//       Navigator.pushReplacement(
//           context, MaterialPageRoute(builder: (context) => Menu()));
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//                 height: 300,
//                 width: 300,
//                 child:  SizedBox(height: 20),
//
//             )],
//         ),
//       ),
//     );
//   }
// }


import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:scrap_app/common/common_styles.dart';
import 'package:scrap_app/common/textfield.dart';


import 'city_selection.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SingleChildScrollView(
       child: Container(child: Padding(
         padding: const EdgeInsets.only(top: 50,),
         child: Column(children: [Center(child:
         Container(height: 300,width: 300,
           child: Lottie.asset('assets/logina.json'),
         ),),
           // Container(width: double.infinity,
           //   child:
           //     TextFormField(decoration: InputDecoration(
           //         enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
           //     focusedBorder: OutlineInputBorder(borderSide: BorderSide()),
           //     hintText: 'phone No.')
           // )),
           // Container(width: double.infinity,
           //     child:
           //     TextFormField(decoration: InputDecoration(
           //         enabledBorder: OutlineInputBorder(borderSide: BorderSide()),
           //         focusedBorder: OutlineInputBorder(borderSide: BorderSide()),
           //         hintText: 'phone No.')
           //     ))
           SizedBox(height: 50,),
           ClayTextFormField(
             iconData: Icons.phone_android,
             hintText: 'PhoneNo.',

           ),
           SizedBox(height: 5,),
           ClayTextFormField(iconData: Icons.password,
             hintText: 'OTP',),


          Padding(
            padding: const EdgeInsets.only(left: 32,right: 32,top: 10),
            child: ClayContainer(borderRadius: 10,
              spread: 2,
                depth: 50,
                width: double.infinity,
                curveType: CurveType.concave,
              color: Color(0XFF94C120),

              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectCity()));
              },
              child: Text("Login",style: CommonStyles.loginText(),),),
            ),
          ),
           SizedBox(height: 25,),
           Image.asset('assets/botom.png',height: 100,)


         ],),
       ),),
     ),

   );

  }
}