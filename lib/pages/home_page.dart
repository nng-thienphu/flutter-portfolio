import 'package:flutter/material.dart';
import 'package:portfolio/constant/img.dart';
import 'package:portfolio/constant/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: purple,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: whiteBackground,
            ),
          ),
        ],
      ),
      Positioned(
          left: 100,
          top: 100,
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: purple,
                  width: 15.0,
                )),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: whiteBackground,
                    width: 30.0,
                  )),
              child: Container(
                width: 350,
                height: 375,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: purple,
                      width: 15.0,
                    ),
                    image: DecorationImage(image: avatar, fit: BoxFit.cover)),
              ),
            ),
          )),
      Positioned(
          top: 150,
          right: 300,
          child: Text(
            "Hi, I'm \nThien Phu",
            style: TextStyle(
                fontFamily: 'Trebuchet',
                color: purple,
                fontSize: 100.0,
                fontWeight: FontWeight.bold),
          )),
      Positioned(
        right: 20,
        top: 100,
        child: Column(children: [
          RotatedBox(
            quarterTurns: 1,
            child: Text(
              "MORE INFORMATION --------- ",
              style: GoogleFonts.openSans(
                letterSpacing: 1,
                fontWeight: FontWeight.w300,
                fontSize: 13,
              ),
            ),
          ),
          InkWell(
            onTap: () =>
                launch("https://www.facebook.com/phu.nguyenthien.3551"),
            child: Container(
                padding: EdgeInsets.all(2.0),
                child: Image(image: fb, height: 25, color: purple)),
          ),
          InkWell(
            onTap: () => launch(
                "https://www.linkedin.com/in/ph%C3%BA-thi%C3%AAn-97a9171a5/"),
            child: Container(
                padding: EdgeInsets.all(2.0),
                child: Image(image: linkedin, height: 25, color: purple)),
          ),
          InkWell(
            onTap: () => launch("https://github.com/nng-thienphu"),
            child: Container(
                padding: EdgeInsets.all(2.0),
                child: Image(
                  image: github,
                  height: 25,
                )),
          )
        ]),
      )
    ]);
  }
}
/*
child: Center(
              child: Container(
                width: 350,
                height: 375,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: purple,
                      width: 15.0,
                    ),
                    image: DecorationImage(image: avatar, fit: BoxFit.cover)),
              ),
            ),
*/
/*
Row(children: <Widget>[
                    Expanded(flex: 1, child: Container(color: purple)),
                    Expanded(
                      flex: 7,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ]),
                  */
