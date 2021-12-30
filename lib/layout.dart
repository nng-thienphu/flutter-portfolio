import 'package:flutter/material.dart';
import './helpers/responsiveness.dart';
import './widgets/large_screen.dart';
import './widgets/small_screen.dart';
import './widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
