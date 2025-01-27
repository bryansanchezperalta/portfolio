import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class LinkButton extends StatelessWidget {
  final IconData icon;
  final String rawUrl;

  const LinkButton({super.key, required this.icon, required this.rawUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(icon, size: 32),
      onTap: () {
        launchURL(rawUrl);
      },
    );
  }
}
