import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileClay extends StatelessWidget{
  final hintText;
  final iconData;
  ProfileClay({
  Key?key,
   required this.hintText,
  required this.iconData,
  }): super(key: key);
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.only(left: 17,right: 17,bottom: 7),
     child: ClayContainer(
       borderRadius: 10,

       child: ListTile(
         leading: Icon(iconData,color: Color(0XFF94C120),),
         title: Text(hintText),
       ),


     ),
   );
  }
}