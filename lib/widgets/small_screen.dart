import 'package:flutter/material.dart';
import '../constant/style.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      "Pull it out (>.<) ",
      style: TextStyle(
          fontFamily: 'Trebuchet',
          color: purple,
          fontSize: 100.0,
          fontWeight: FontWeight.bold),
    ));
  }
}
