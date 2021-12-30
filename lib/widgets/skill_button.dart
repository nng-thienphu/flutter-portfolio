import 'package:flutter/material.dart';
import 'package:portfolio/constant/style.dart';

class SkillButton extends StatelessWidget {
  final String skill;
  final NetworkImage progIcon;
  const SkillButton({Key? key, required this.skill, required this.progIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            Image(image: this.progIcon, height: 60),
            Text(
              this.skill,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Trebuchet",
                  color: purple),
            ),
          ],
        ));
  }
}
