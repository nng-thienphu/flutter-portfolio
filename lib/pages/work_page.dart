import 'package:flutter/material.dart';
// import 'package:portfolio/models/work.dart';
import 'package:portfolio/widgets/project_card.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:widget_animator/widget_animator.dart';
import 'package:portfolio/constant/information.dart';
import 'package:portfolio/widgets/text_heading.dart';
import 'package:portfolio/constant/style.dart';

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          TextHeading(heading: "\nPortfolio"),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.21,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: purple,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
                    backImage: kProjectsBanner[index],
                    projectIcon: kProjectsIcons[index],
                    projectTitle: kProjectsTitles[index],
                    projectDescription: kProjectsDescriptions[index],
                    projectLink: kProjectsLinks[index],
                  ),
                );
              },
              itemCount: 1,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
        ],
      ),
    );
  }
}
