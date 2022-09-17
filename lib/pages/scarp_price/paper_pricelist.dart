import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrap_app/common/common_styles.dart';

class PaperPriceList extends StatefulWidget{
  @override
  State<PaperPriceList> createState() => PaperPriceListState();
}

class PaperPriceListState extends State<PaperPriceList> {
  GlobalKey <ScaffoldState> _key = GlobalKey();


  final Choice item1=new Choice(title:'₹10/Kg',titles:'Carton Box',image: 'assets/bannerA.jpg',route: 'first',icons: Icons.menu_book_outlined);
  final Choice item2=new Choice(title:'12/Kg',titles:'Text Book',image: 'assetsbannerA.jpg',icons: Icons.monitor_rounded,route: 'first');
  final Choice item3=new Choice(title:'₹11/Kg',titles:'Note Book',image: 'assets/bannerA.jpg',icons: Icons.car_crash,route: 'first');

  final Choice item4=new Choice(title:'21/Kg,',titles:'NewsPaper',image: 'assets/bannerA.jpg',icons: Icons.newspaper,route: 'first');
  final Choice item5=new Choice(title:'₹8/Kg',titles:'Magazines',image: 'assets/bannerA.jpg',icons: Icons.newspaper,route: 'first');
  final Choice item6=new Choice(title:'₹3/kg',titles:'PaperBag',image: 'assets/bannerA.jpg',icons: Icons.newspaper,route: 'first');
  final Choice item7=new Choice(title:'₹10/Kg',titles:'Others',image: 'assets/bannerA.jpg',icons: Icons.newspaper,route: 'first');

  @override
  Widget build(BuildContext context) {
    List <Choice>myList=[item1,item2,item3,item4,item5,item6,item7];
    return Scaffold
      (body:  Container(height: 1000,
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

    );
  }
}





class

Choice {
  const Choice({required this.title,required this.image,required this.route,required this.icons,required this.titles});
  final String title;
  final String image;
  final String route;
  final IconData icons;
  final String titles;


}
class SelectCard extends StatelessWidget {
  const SelectCard({Key?key, required this.choice}):super(key: key);
  final Choice choice;


  @override

  Widget build(BuildContext context) {
    return Column(children: [
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
                child: Container(child: Icon(choice.icons)

                ),
              ),
              Text(choice.titles.toUpperCase(),style: CommonStyles.greentext(),),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(choice.title,style: CommonStyles.graydarktext(),),
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
    );
  }

}
