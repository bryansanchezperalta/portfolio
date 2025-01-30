import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktopWidget;
  final Widget mobileWidget;

  const Responsive({
    super.key,
    required this.desktopWidget,
    required this.mobileWidget,
  });

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 700) {
      return desktopWidget;
    } else {
      return mobileWidget;
    }
  }
}
