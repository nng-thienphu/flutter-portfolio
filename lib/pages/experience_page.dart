import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/constant/style.dart';
import 'package:portfolio/pages/experience_page_info.dart';
import 'package:portfolio/widgets/text_heading.dart';

//String hoverWidget = "";
StreamController<String> experienceController =
    StreamController<String>.broadcast();

class experiencePage extends StatelessWidget {
  const experiencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 40,
            right: 450,
            child: TextHeading(
              heading: "My Experience",
            )),
        ExperienceLayout()
      ],
    );
  }
}

class ExperienceLayout extends StatelessWidget {
  const ExperienceLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.center, //Center Column contents vertically,
        crossAxisAlignment:
            CrossAxisAlignment.center, //Center Column contents horizontally,
        children: [
          // 1 Monitor in the Row
          Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.blue.shade200,
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ]),
              child: Stack(
                children: <Widget>[
                  Row(children: <Widget>[
                    Expanded(flex: 1, child: Container(color: purple)),
                    Expanded(
                      flex: 7,
                      child: Container(color: whiteBackground),
                    ),
                  ]),
                  // STOP AT THE STEP REPOSITION THIS CONTAINER
                  ExperienceViewList(),
                ],
              )),
          SizedBox(width: 40),
          // 2nd monitor in the Row
          Container(
              width: 500,
              height: 400,
              color: whiteBackground,
              child: ExperienceWidgets(stream: experienceController.stream))
        ],
      ),
    );
  }
}

class ExperienceWidgets extends StatefulWidget {
  // final ValueListenable<String> activeWidget = "Education";
  final Stream<String> stream;
  const ExperienceWidgets({Key? key, required this.stream}) : super(key: key);

  @override
  _ExperienceWidgetsState createState() => _ExperienceWidgetsState();
}

class _ExperienceWidgetsState extends State<ExperienceWidgets> {
  Widget showWidget = EducationWidget();
  //bool _disposed = false;
  //DateTime time = DateTime.now();

  void changeWidget(String activeWidget) {
    if (mounted) {
      setState(() {
        switch (activeWidget) {
          case "Education":
            print(activeWidget);
            showWidget = EducationWidget();
            break;
          case "Programming Skills":
            print(activeWidget);
            showWidget = ProgrammingWidget();
            break;
          case "Researching Skills":
            print(activeWidget);
            showWidget = ResearchWidget();
            break;
          case "Work Experience":
            print(activeWidget);
            showWidget = WorkWidget();
            break;
        }
      });
    }
  }

  @override
  void initState() {
    widget.stream.listen((values) {
      changeWidget(values);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return showWidget;
  }
}

class ExperienceViewList extends StatelessWidget {
  const ExperienceViewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 250,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10)),
          onHoverExperienceButton(
              btnText: "Work Experience",
              btnIcon: Icon(Icons.history, size: 20.0, color: Colors.white)),
          onHoverExperienceButton(
              btnText: "Programming Skills",
              btnIcon: Icon(Icons.code, size: 20.0, color: Colors.white)),
          onHoverExperienceButton(
            btnIcon: Icon(Icons.search, size: 20.0, color: Colors.white),
            btnText: "Researching Skills",
          ),
          onHoverExperienceButton(
              btnIcon: Icon(Icons.school, size: 20.0, color: Colors.white),
              btnText: "Education"),
        ],
      ),
    );
  }
}

class onHoverExperienceButton extends StatefulWidget {
  final String btnText;
  final Icon btnIcon;

  const onHoverExperienceButton(
      {Key? key, required this.btnText, required this.btnIcon})
      : super(key: key);

  @override
  _onHoverExperienceButtonState createState() =>
      _onHoverExperienceButtonState();
}

class _onHoverExperienceButtonState extends State<onHoverExperienceButton> {
  bool isHovered = false;
  // StreamController<String> experienceController = StreamController<String>();

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()
      ..translate(8, 0, 0)
      ..scale(1.1);

    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(70.0),
              bottomRight: Radius.circular(70.0),
            ),
            color: isHovered ? purple : Colors.transparent),
        duration: Duration(milliseconds: 200),
        transform: isHovered ? hoveredTransform : Matrix4.identity(),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          RawMaterialButton(
            onPressed: () {},
            elevation: 2.0,
            fillColor: Colors.blue,
            child: this.widget.btnIcon,
            //padding: EdgeInsets.all(0.0),
            shape: CircleBorder(),
          ),
          Text("${this.widget.btnText}"),
        ]),
      ),
    );
  }

  void onEntered(bool isHovered) {
    //experienceController.add(this.widget.btnText);
    experienceController.add(this.widget.btnText);
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
