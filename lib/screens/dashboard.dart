import 'package:coffee_house/constants/color_palette.dart';
import 'package:coffee_house/screens/black_gold.dart';
import 'package:coffee_house/screens/cold_brew.dart';
import 'package:coffee_house/screens/gold_brew.dart';
import 'package:coffee_house/screens/mccafe.dart';
import 'package:coffee_house/screens/nescafe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final colorPallete = ColorPallete();
  var selectedOption = 0;
  List allOptions = [BlackGold(), ColdBrew(), Nescafe(), McCafe(), GoldBrew()];
  List isSelected = [true, false, false, false, false];

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
            width: screenWidth / 5,
            color: colorPallete.leftBarColor,
          ),
          Positioned(
              left: screenWidth / 5,
              child: Container(
                  height: screenHeight,
                  width: screenWidth - (screenWidth / 5),
                  color: Colors.white)),
          Positioned(
            top: 35,
            left: 20,
            child: Icon(Feather.menu),
          ),
          Positioned(
            top: 35,
            right: 20,
            child: Icon(Feather.shopping_bag),
          ),
          Positioned(
            top: screenHeight - (screenHeight - 100),
            left: (screenWidth / 5) + 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("CoffeeHouse",
                    style: GoogleFonts.bigShouldersText(
                        color: colorPallete.headerTextColor, fontSize: 40)),
                Text("A lot can happen over coffee",
                    style: GoogleFonts.bigShouldersText(
                        color: colorPallete.paragraphTextColor, fontSize: 15)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 40,
                  width: 225,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(0.4)),
                        ),
                        contentPadding: EdgeInsets.only(top: 10, left: 10),
                        hintText: "search...",
                        hintStyle: GoogleFonts.bigShouldersText(
                            color: colorPallete.paragraphTextColor,
                            fontSize: 15),
                        suffixIcon: Icon(Icons.search,
                            color: colorPallete.paragraphTextColor)),
                  ),
                )
              ],
            ),
          ),
          buildSideNavigatorBar(screenWidth, screenHeight),
          Positioned(
              top: (screenHeight / 4) + 5,
              left: (screenWidth / 5) + 25,
              child: Container(
                height: screenHeight - (screenHeight / 3) + 50,
                width: screenWidth - (screenWidth / 5) + 40,
                child: allOptions[selectedOption],
              ))
        ],
      ),
    );
  }

  Widget buildSideNavigatorBar(double screenWidth, double screenHeight) {
    return Positioned(
      top: 75,
      child: RotatedBox(
        quarterTurns: 3,
        child: Container(
          width: screenHeight - 100,
          height: screenWidth / 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildOption('Black Gold', 0),
              buildOption('Cold Brew', 1),
              buildOption('Nescafe', 2),
              buildOption('McCafe', 3),
              buildOption('Gold Brew', 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOption(String title, int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isSelected[index]
            ? Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorPallete.headerTextColor),
              )
            : Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.transparent),
              ),
        SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = index;
              isOptionSelected(index);
            });
          },
          child: Text(
            title,
            style: isSelected[index]
                ? GoogleFonts.bigShouldersText(
                    color: colorPallete.headerTextColor, fontSize: 24)
                : GoogleFonts.bigShouldersText(
                    color: colorPallete.paragraphTextColor, fontSize: 22),
          ),
        )
      ],
    );
  }

  isOptionSelected(index) {
    var previousIndex = isSelected.indexOf(true);
    isSelected[index] = true;
    isSelected[previousIndex] = false;
  }
}
