import 'package:coffee_house/constants/color_palette.dart';
import 'package:coffee_house/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ColdBrew extends StatefulWidget {
  @override
  _ColdBrewState createState() => _ColdBrewState();
}

class _ColdBrewState extends State<ColdBrew> {
  var colorPallete = ColorPallete();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildListItem(
          'assets/images/coffee4.png',
          '150',
          colorPallete.secondSlice,
        ),
        buildListItem(
          'assets/images/coffee2.png',
          '125',
          colorPallete.firstSlice,
        ),
        buildListItem(
          'assets/images/coffee1.png',
          '100',
          colorPallete.firstSlice,
        )
      ],
    );
  }

  buildListItem(String imgPath, String price, Color bgColor) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CoffeDetails(
                  imgPath: imgPath,
                  bgColor: bgColor,
                )));
      },
      child: Stack(
        children: [
          Container(
            height: 300,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.transparent),
          ),
          Positioned(
              top: 100,
              child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: AssetImage('assets/images/doodle.png'),
                          fit: BoxFit.none)))),
          Positioned(
              top: 100,
              child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.6),
                      image: DecorationImage(
                          image: AssetImage('assets/images/doodle.png'),
                          fit: BoxFit.none)))),
          Positioned(
              top: 100,
              child: Container(
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: bgColor.withOpacity(0.9),
                  ))),
          Positioned(
            right: 120,
            child: Hero(
              tag: imgPath,
              child: Container(
                  height: 250,
                  width: 150,
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.scaleDown,
                  )),
            ),
          ),
          Positioned(
              top: 125,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Price",
                      style: GoogleFonts.bigShouldersText(
                          color: colorPallete.headerTextColor, fontSize: 20)),
                  Text("\$" + price,
                      style: GoogleFonts.bigShouldersText(
                          color: Colors.white, fontSize: 40)),
                  SizedBox(height: 20),
                  Text("Grady's COLD BREW",
                      style: GoogleFonts.bigShouldersText(
                          color: colorPallete.headerTextColor, fontSize: 27)),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('65 reviews',
                                    style: GoogleFonts.bigShouldersText(
                                        color: Colors.white, fontSize: 15)),
                                SmoothStarRating(
                                    starCount: 5,
                                    size: 15,
                                    color: Colors.white,
                                    borderColor: Colors.white,
                                    rating: 3)
                              ]),
                          GestureDetector(
                              onTap: () {},
                              child: Container(
                                  width: 75,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.add, size: 17),
                                      SizedBox(width: 5),
                                      Text('Add',
                                          style: GoogleFonts.bigShouldersText(
                                              color:
                                                  colorPallete.headerTextColor,
                                              fontSize: 15))
                                    ],
                                  )))
                        ],
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
