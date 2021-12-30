import 'package:flutter/material.dart';
import 'package:portfolio/constant/style.dart';
import 'package:portfolio/constant/img.dart';
import 'package:portfolio/models/education.dart';
import 'package:portfolio/widgets/skill_button.dart';

/// EDUCATION
var secSchool = Education(
    "Hoa Lu Secondary School", "Specializng in Mathematics", "", "2014-2017");
var highSchool = Education(
    "High School for the Gifted",
    "Specializing in Mathematics " + "Chemistry and Physics",
    "VNU-HCM High School for the Gifted (Vietnamese: Trường Phổ thông Năng khiếu, "
        "Đại học Quốc gia Thành phố Hồ Chí Minh) is a specialized public high school "
        "located in Ho Chi Minh City, Vietnam.",
    "2017-2020");
var uniSchool = Education(
    "Fulbright University Vietnam",
    "BCs in Economics",
    "Fulbright University Vietnam is a private nonprofit university in the "
        "Saigon Hi-Tech Park in Ho Chi Minh City, Vietnam. It is one of Vietnam's "
        "first private, nonprofit institutions of higher education.",
    "2020-2024");

class EducationWidget extends StatelessWidget {
  const EducationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ExperienceText(ex_school: uniSchool),
        ExperienceText(ex_school: highSchool),
        ExperienceText(ex_school: secSchool)
      ],
    );
  }
}

class ExperienceText extends StatelessWidget {
  final Education ex_school;
  const ExperienceText({Key? key, required this.ex_school}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text(ex_school.school,
                style: TextStyle(
                    color: purple, fontSize: 20, fontWeight: FontWeight.w600)),
            Spacer(),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    splashFactory: NoSplash.splashFactory,
                    shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                child: Text(ex_school.time,
                    style: TextStyle(color: Colors.white, fontSize: 14))),
          ]),
          Text(ex_school.major,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                color: Colors.red[200],
              )),
          Text(ex_school.description,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100)),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class ProgrammingWidget extends StatelessWidget {
  const ProgrammingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SkillButton(skill: "Java", progIcon: java),
        SkillButton(skill: "Python", progIcon: python),
        SkillButton(skill: "JavaScript", progIcon: js),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SkillButton(skill: "Dart", progIcon: dart),
        SkillButton(skill: "Flutter", progIcon: flutter),
      ])
    ]);
  }
}

/// Research
class ResearchWidget extends StatelessWidget {
  const ResearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SkillButton(skill: "Qualitative Analysis by SPSS", progIcon: spss),
      SkillButton(skill: "Quantitative Analysis by Python", progIcon: py)
    ]);
  }
}

/// Work
var gdsc = Education(
    "Google Developer Student Club",
    "Founder/ Campus Lead",
    "Community groups for university students offered by Google",
    "May 2021 - Now");

var socialLife = Education("SocialLife", "Internship - Research Assistance",
    "Social Research Institute", "May 2021 - Now");
var stem = Education("STEM club", "Member", "Stem club of Fulbright University",
    "Sep 2020 - October 2021");
var fic = Education("Fulbright Investment Club", "Community Development Leader",
    "A finance club of Fulbright University", "Sep 2020 - May 2021");

class WorkWidget extends StatelessWidget {
  const WorkWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ExperienceText(ex_school: gdsc),
        ExperienceText(ex_school: socialLife),
        ExperienceText(ex_school: stem),
        ExperienceText(ex_school: fic)
      ],
    );
  }
}
