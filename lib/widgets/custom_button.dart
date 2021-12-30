import 'package:flutter/material.dart';
import 'package:portfolio/constant/style.dart';
import 'package:google_fonts/google_fonts.dart';

class OutlinedCustomBtn extends StatelessWidget {
  final String btnText;
  final Function onPressed;

  const OutlinedCustomBtn(
      {Key? key, required this.btnText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      hoverColor: purple.withAlpha(150),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: purple)),
      onPressed: this.onPressed(),
      child: Text(
        btnText,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w300, color: Colors.black),
      ),
    );
  }
}
