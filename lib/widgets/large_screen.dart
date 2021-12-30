import 'package:flutter/material.dart';
import 'package:portfolio/pages/experience_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/work_page.dart';

class LargeScreen extends StatefulWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  _LargeScreenState createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: true,
      scrollDirection: Axis.vertical,
      reverse: false,
      controller: pageController,
      physics: AlwaysScrollableScrollPhysics(),
      children: <Widget>[homePage(), experiencePage(), WorkPage()],
    );
  }
}
