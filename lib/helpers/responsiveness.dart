import 'package:flutter/material.dart';

const int largeScreenSize = 1366;
const int smallScreenSize = 360;
const int mediumScreenSize = 768;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;
  final Widget? customScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
    this.customScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double _width = constraints.maxWidth;

      if (_width >= largeScreenSize) {
        return largeScreen;
      } else if (_width >= mediumScreenSize && _width < largeScreenSize) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < customScreenSize;
}
