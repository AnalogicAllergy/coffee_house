import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class McCafe extends StatefulWidget {
  @override
  _McCafeState createState() => _McCafeState();
}

class _McCafeState extends State<McCafe> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("McCafé",
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
