import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class Section extends StatelessWidget {
  final String title;
  final Widget content;

  const Section({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppPaddings.large),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: AppFontSizes.large,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: AppPaddings.medium),
            child: content,
          ),
        ],
      ),
    );
  }
}
