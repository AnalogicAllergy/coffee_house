import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoldBrew extends StatefulWidget {
  @override
  _GoldBrewState createState() => _GoldBrewState();
}

class _GoldBrewState extends State<GoldBrew> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Gold GoldBrew",
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
