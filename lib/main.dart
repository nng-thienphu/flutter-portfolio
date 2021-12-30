import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constant/style.dart';
import 'layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
        scaffoldBackgroundColor: whiteBackground,
        textTheme:
            GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.black,
        ),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.blue,
      ),
      home: SiteLayout(),
    );
  }
}


// import 'experience.dart';

// void main() {
//   runApp(experiencePage());
// }

// class experiencePage extends StatelessWidget {
//   const experiencePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: experienceWidget());
//   }
// }
