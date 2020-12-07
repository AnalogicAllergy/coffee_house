import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackGold extends StatefulWidget {
  @override
  _BlackGoldState createState() => _BlackGoldState();
}

class _BlackGoldState extends State<BlackGold> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Black Gold",
            style: GoogleFonts.bigShouldersText(
              fontSize: 56,
            )),
        Text("Coming soon",
            style: GoogleFonts.bigShouldersText(
              fontSize: 32,
            )),
      ],
    )));
  }
}
