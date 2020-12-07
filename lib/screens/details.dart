import 'package:coffee_house/constants/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeDetails extends StatefulWidget {
  const CoffeDetails({Key key, this.imgPath, this.bgColor}) : super(key: key);

  @override
  _CoffeDetailsState createState() => _CoffeDetailsState();

  final String imgPath;
  final Color bgColor;
}

class _CoffeDetailsState extends State<CoffeDetails> {
  var colorPallete = ColorPallete();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: screenHeight,
          width: screenWidth,
          color: Colors.transparent,
        ),
        Container(
          height: screenHeight,
          width: screenWidth,
          color: colorPallete.leftBarColor,
        ),
        Container(
          height: screenHeight / 2.3,
          width: screenWidth,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30))),
        ),
        Container(
          height: (screenHeight / 4 + 25),
          width: screenWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              image: DecorationImage(
                  image: AssetImage('assets/images/doodle.png'),
                  fit: BoxFit.none)),
        ),
        Container(
          height: (screenHeight / 4 + 25),
          width: screenWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              color: Colors.white.withOpacity(0.6)),
        ),
        Container(
          height: (screenHeight / 4 + 25),
          width: screenWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              color: widget.bgColor.withOpacity(0.9)),
        ),
        Positioned(
          top: 35,
          left: 20,
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        Positioned(
          top: 35,
          right: 20,
          child: Icon(Feather.shopping_bag, color: Colors.white),
        ),
        Positioned(
          top: (screenHeight / 4 - 100),
          left: (screenWidth / 4),
          child: Hero(
              tag: widget.imgPath,
              child: Image(
                  image: AssetImage(widget.imgPath),
                  height: 175,
                  width: 175,
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: (screenHeight / 3),
          left: (screenWidth / 5),
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Grady's COLD BREW",
                  style: GoogleFonts.bigShouldersText(
                      color: colorPallete.headerTextColor, fontSize: 28)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Feather.user, size: 24),
                  SizedBox(width: 10),
                  Text("1.5k",
                      style: GoogleFonts.bigShouldersText(
                          color: colorPallete.firstSlice, fontSize: 24)),
                  SizedBox(width: 15),
                  Container(width: 1, height: 20, color: Colors.grey),
                  Icon(Feather.star, size: 24),
                  SizedBox(width: 10),
                  Text("4",
                      style: GoogleFonts.bigShouldersText(
                          color: colorPallete.firstSlice, fontSize: 24)),
                  SizedBox(width: 15),
                  Container(width: 1, height: 20, color: Colors.grey),
                  Icon(Feather.anchor, size: 24),
                  SizedBox(width: 10),
                  Text("No. 1",
                      style: GoogleFonts.bigShouldersText(
                          color: colorPallete.firstSlice, fontSize: 24)),
                  SizedBox(width: 15),
                ],
              )
            ],
          )),
        ),
        Positioned(
            top: screenHeight / 2 + 5,
            left: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About Us',
                  style: GoogleFonts.bigShouldersText(
                      color: Color(0xFF23163D), fontSize: 40.0),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: screenWidth - 40.0,
                  child: Text(
                    'Cold brewed with chicory and a unique blend of spices for 20 hours, our concentrate is velvety-smooth and packed with flavor.',
                    style: GoogleFonts.bigShouldersText(
                        color: Color(0xFFB5ABB8), fontSize: 20.0),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 150,
                  width: screenWidth,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildOneItem('\$65'),
                      SizedBox(width: 20),
                      buildOneItem('\$99'),
                      SizedBox(width: 20),
                      buildOneItem('\$89'),
                    ],
                  ),
                ),
                SizedBox(height: 75),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 50,
                        width: 225,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorPallete.buttonColor),
                        child: Center(
                            child: Text(
                          "BUY NOW!",
                          style: GoogleFonts.bigShouldersText(
                              color: Colors.white, fontSize: 24),
                        ))),
                    SizedBox(width: 75),
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: colorPallete.buttonColor, width: 2),
                        ),
                        child: Center(child: Icon(Feather.bookmark, size: 17))),
                  ],
                )
              ],
            ))
      ],
    ));
  }

  buildOneItem(String price) {
    return Stack(
      children: [
        Container(height: 200, width: 200, color: Colors.transparent),
        Positioned(
            top: 50,
            child: Container(
                height: 90,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 2,
                        color: Colors.grey.withOpacity(0.2))
                  ],
                ))),
        Positioned(
            right: 5,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/coffee3.png'),
                      fit: BoxFit.cover)),
            )),
        Positioned(
          left: 10,
          top: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(price,
                  style: GoogleFonts.bigShouldersText(
                      color: colorPallete.firstSlice, fontSize: 25)),
              SizedBox(height: 10),
              Text("COLD BREW KIT",
                  style: GoogleFonts.bigShouldersText(
                      color: colorPallete.headerTextColor, fontSize: 20))
            ],
          ),
        )
      ],
    );
  }
}
