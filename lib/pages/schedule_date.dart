import 'package:clay_containers/clay_containers.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrap_app/pages/confirm_details.dart';

import '../common/common_styles.dart';


class ScheduleDate extends StatefulWidget{
  const ScheduleDate({Key? key, this.RestorationId}) : super(key: key);

  final String? RestorationId;
  @override
  State<ScheduleDate> createState() => _bike_rent_detailsState();
}

class _bike_rent_detailsState extends State<ScheduleDate>with RestorationMixin {
  String? get restorationId => widget.RestorationId;
  TimeOfDay SelectedTime = TimeOfDay.now();

  final RestorableDateTime _SelectDate =
  RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
  RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _DatePickerRoute,
        arguments: _SelectDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _DatePickerRoute(
      BuildContext context,
      Object? arguments,
      ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'Date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_SelectDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _SelectDate.value = newSelectedDate;

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body:
        SingleChildScrollView(
            child: Column(children:
            [
              Container(child: Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Text("Schedule your own Time",
                    style:GoogleFonts.aclonica(fontSize: 26,color: Colors.blue.shade900,fontWeight: FontWeight.bold) ),
              ),),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                child: ClayContainer(emboss: true,
                  borderRadius: 20,
                  depth: -170,
                  curveType: CurveType.convex,
                  spread: 2.5,
                  child: Container(height: 200,width: 400,
                    decoration: BoxDecoration(border: Border.all(color: Color(0xFF94C120)),
                        color: Colors.white,borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage("assets/schedule.png"))),

                  ),
                ),
              ),

              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50),
                child:  InkWell(onTap:(){

                  _restorableDatePickerRouteFuture.present();

                } ,
                  child: ClayContainer(height: 47,
                    borderRadius: 10,
                    spread: 2,
                    depth: 50,
                    width: double.infinity,
                    curveType: CurveType.concave,
                    color: Color(0XFF94C120),


                    // margin: EdgeInsets.only(left: 10,right: 10),decoration:

                    // BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),


                            // children:[  Container(height: 30,width: 120,
                            //
                            //   child:Text("START DATE",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                            //
                            // ),SizedBox(width: 80,),





                        child:

                        Padding(
                          padding: const EdgeInsets.only(left: 50,right: 40),
                          child: Row(children: [
                            Text("Pickup Date",style: CommonStyles.loginText(),),



                              // Icon(Icons.calendar_month),



                            Container(child:Text(

                              '   ${_SelectDate.value.day}/${_SelectDate.value.month}/${_SelectDate.value.year}',

                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),)

                          ],),
                        ),











                            ),
                )
              ),
              SizedBox(height: 20,),
              Container(height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50,right: 50),
                  child: ClayContainer(borderRadius: 10,
                    spread: 2,
                    depth: 50,
                    width: double.infinity,
                    curveType: CurveType.concave,
                    color: Color(0XFF94C120),

                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmDetails()));
                    },
                      child: Text("Next",style: CommonStyles.loginText(),),),
                  ),
                ),
              )

            ],),

                  ),















    );
  }


  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: SelectedTime,
      initialEntryMode: TimePickerEntryMode.dial,

    );
    if(timeOfDay != null && timeOfDay != SelectedTime)
    {
      setState(() {
        SelectedTime = timeOfDay;
      });
    }
  }
}










// Container(
// child: InkWell(onTap:(){
// _restorableDatePickerRouteFuture.present();
// } ,
// child:
// Icon(Icons.calendar_month))
// ),
// Container(child: Text(
// 'Date: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),)
//





// OutlinedButton(
// onPressed: () {
//
// _restorableDatePickerRouteFuture.present();
// },
// child: const Text('Open Date Picker'),
//
// ),
// ),
// Container(child: Text(
// 'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),)
//


