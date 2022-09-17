import 'package:flutter/material.dart';
import 'package:scrap_app/pages/home_page.dart';



class SliderModel {
  String? imageAssetPath;
  String? title;
  String? desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String? getImageAssetPath() {
    return imageAssetPath;
  }

  String? getTitle() {
    return title;
  }

  String? getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = [];
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc(
      "Now you can sell all your scrap online and earn cash."
          .toUpperCase());
  sliderModel.setTitle("Select your scraps...!!!".toUpperCase());
  sliderModel.setImageAssetPath("assets/fourecy.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc(
      "Once you schedule the date we'll collect your scrap at your doorstep."
          .toUpperCase());
  sliderModel.setTitle("Schedule the pickup Date".toUpperCase());
  sliderModel.setImageAssetPath("assets/schedule.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc(
      "Now its your turn!"
          .toUpperCase());
  sliderModel.setTitle("Sell your scrap and earn cash!!!".toUpperCase());
  sliderModel.setImageAssetPath("assets/money.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<SliderModel>? mySLides = [];
  int slideIndex = 0;
  late PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            physics: BouncingScrollPhysics(),
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            children: List.generate(3, (index) {
              return SliderTile(
                title: mySLides![index].getTitle(),
                imagePath: mySLides![index].getImageAssetPath(),
                desc: mySLides![index].getDesc(),
              );
            }),
          ),
        ),
        bottomSheet: slideIndex != 2
            ? Container(
          height: 60,
          color: Color(0xFF94C120),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  controller.jumpToPage(2);
                },
                child: Text(
                  "SKIP",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    for (int i = 0; i < 3; i++)
                      i == slideIndex
                          ? _buildPageIndicator(true)
                          : _buildPageIndicator(false),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  controller.animateToPage(slideIndex + 1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.linear);
                },
                child: Text(
                  "NEXT",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        )
            : InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Container(
            height: 60,
            color: Color(0xFF94C120),
            alignment: Alignment.center,
            child: Text(
              "GET STARTED NOW",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SliderTile extends StatelessWidget {
  String? imagePath, title, desc;

  SliderTile({this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 400,
            width: 400,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(
                    imagePath!,
                  ),
                  fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
                color: Colors.black,
                letterSpacing: .1,
                wordSpacing: .1,
              ),
            ),
          ),
          Divider(
            color: Color(0xFF18273f),
          ),
          Text(
            desc!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.black,
              letterSpacing: 0.1,
              wordSpacing: 1,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
