import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nescafe extends StatefulWidget {
  @override
  _NescafeState createState() => _NescafeState();
}

class _NescafeState extends State<Nescafe> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Nescafe",
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
