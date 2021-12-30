import 'package:flutter/material.dart';
import 'package:portfolio/constant/style.dart';

class TextHeading extends StatelessWidget {
  final String heading;
  const TextHeading({Key? key, required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
          fontFamily: 'Trebuchet',
          color: purple,
          fontSize: 50.0,
          fontWeight: FontWeight.bold),
    );
  }
}
