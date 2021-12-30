import "package:flutter/material.dart";
import 'package:portfolio/constant/style.dart';
import 'package:url_launcher/url_launcher.dart';
import "../helpers/responsiveness.dart";
import "../helpers/custom_text.dart";
import "package:portfolio/helpers/download.dart";

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    elevation: 0,
    title: Row(
      children: [
        Visibility(
          child: CustomText(
              text: "Portfolio Website",
              color: purple,
              size: 25,
              weight: FontWeight.bold),
        ),
        Expanded(
          child: Container(),
        ),
        SizedBox(
          height: 40,
          child: ElevatedButton(
              onPressed: () {
                launch(
                    "https://docs.google.com/document/d/16fNNm5M6u_12hqZiw3sGFv_Sx4ckQBkr/edit?usp=sharing&ouid=117193878825054374057&rtpof=true&sd=true");
              },
              child: Text("DOWNLOAD CV"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)))),
        ),
        SizedBox(width: 24),
      ],
    ),
    iconTheme: IconThemeData(color: dark),
    backgroundColor: Colors.transparent,
  );
}
