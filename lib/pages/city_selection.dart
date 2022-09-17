import 'package:flutter/material.dart';

class SelectCity extends StatefulWidget{
  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  GlobalKey <ScaffoldState> _key = GlobalKey();


  final Choice item1=new Choice(title:'Bangalore',image: 'assets/bangalore.png',route: 'second');
  final Choice item2=new Choice(title:'Chennai',image: 'assets/chennai.png',route: 'second');
  final Choice item3=new Choice(title:'Kerala',image: 'assets/kerala.png',route: 'second');

  final Choice item4=new Choice(title:'Andhra',image: 'assets/andhra.png',route: 'second');
  final Choice item5=new Choice(title:'Telangana',image: 'assets/telangana.png',route: 'second');
  final Choice item6=new Choice(title:'Kanyakumari',image: 'assets/kumari.png',route: 'second');
  final Choice item7=new Choice(title:'Delhi',image: 'assets/delhi.png',route: 'second');

  @override
  Widget build(BuildContext context) {
    List <Choice>myList=[item1,item2,item3,item4,item5,item6,item7];
   return Scaffold(appBar: AppBar(title: Text("Select City"),
   elevation: 0.0,
   backgroundColor: Color(0XFF94C120),),
     body: Padding(
       padding: const EdgeInsets.only(top: 10),
       child: Column(
         children: [
           Container(height: 430,
           width: MediaQuery.of(context).size.width,
           child: GridView.count(crossAxisCount: 3,mainAxisSpacing: 10,
             children: myList.map((e){
               return Center(child: InkWell(onTap: (){
                 Navigator.pushNamed(context, e.route);
               },
                   child: SelectCard(choice:e)),
               );
             }).toList()
             ,),



   ),
           Container(child: Image.asset("assets/citysc.png"))
         ],
       ),
     ),
   );
  }
}
class

Choice {
  const Choice({required this.title,required this.image,required this.route});
  final String title;
  final String image;
  final String route;


}
class SelectCard extends StatelessWidget {
  const SelectCard({Key?key, required this.choice}):super(key: key);
  final Choice choice;


  @override

  Widget build(BuildContext context) {
    return Column(children: [
      Container(height: 105,width: 105,decoration:
      BoxDecoration(shape: BoxShape.circle,
          border: Border.all(color: Colors.cyan),
          image: DecorationImage(image:AssetImage(choice.image),fit: BoxFit.cover )),
        child: Container(alignment: Alignment.center,

        ),
      ),
      Container(height: 15,
        child: Text(choice.title,style:
        TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.black),),
      )

    ],
    );
  }

}
