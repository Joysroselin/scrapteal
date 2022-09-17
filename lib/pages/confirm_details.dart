

import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:scrap_app/common/common_styles.dart';




class ConfirmDetails extends StatefulWidget{

  @override
  State<ConfirmDetails> createState() => _ConfirmDetailsState();
}

class _ConfirmDetailsState extends State<ConfirmDetails> {


  var _result;
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(


      body: SingleChildScrollView(
        // alignment: Alignment.center,
        // child: Image.asset("assets/money.png")
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 65),
            child: Text("Confirm Details",style: CommonStyles.bigBluetext(),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
            child: ClayContainer(spread: 1,
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
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150,top: 20),
            child: Text("Upload your Scrap image",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.black ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45,right: 45,top: 10),
            child: Container(width: double.infinity,
              child: ClayContainer(height: 130,spread: 2,
                  // color: Colors.pink,
                  child:
                  // Image.asset("assets/scrapwaste.png")
                 Icon(Icons.camera),

              ),
            ),
          ),

          // Center(
          //   child: GestureDetector(
          //     onTap: () async
          //     {
          //       var source = type == ImageSourceType.camera
          //           ? ImageSource.camera
          //           : ImageSource.gallery;
          //       var imagePicker;
          //       XFile image = await imagePicker.pickImage(
          //           source: source, imageQuality: 50, preferredCameraDevice: CameraDevice.front);
          //       setState(() {
          //         _image = File(image.path);
          //       });
          //     },
          //     child: Container(
          //       width: 200,
          //       height: 200,
          //       decoration: BoxDecoration(
          //           color: Colors.red[200]),
          //       child: _image != null
          //           ? Image.file(
          //         _image,
          //         width: 200.0,
          //         height: 200.0,
          //         fit: BoxFit.fitHeight,
          //       )
          //           : Container(
          //         decoration: BoxDecoration(
          //             color: Colors.red[200]),
          //         width: 200,
          //         height: 200,
          //         child: Icon(
          //           Icons.camera_alt,
          //           color: Colors.grey[800],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),




          Padding(
            padding: const EdgeInsets.only(right: 210,top: 20,),
            child: Text("Payment Mode",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.black ),),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClayContainer(child: Column(children: [

              RadioListTile(
                  title: const Text('Cash on Delivery'),
                  value: 1,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),
              // Divider(thickness: 2,),
              RadioListTile(
                  title: const Text('Phnone Pay'),
                  value: 2,
                  groupValue: _result,
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  }),

            ],),),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 32,right: 32,top: 30),
            child: ClayContainer(borderRadius: 10,
              spread: 2,
              depth: 50,
              width: double.infinity,
              curveType: CurveType.concave,
              color: Color(0XFF94C120),

              child: TextButton(onPressed: (){
                showAlertDialog(context);
              },
                child: Text("Confirm Order",style: CommonStyles.loginText(),),),
            ),
          ),







        ],),
        ),
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () { Navigator.pop(context); },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("HSDP Scrap"),
      content: Text("Your order is successful!!!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


}