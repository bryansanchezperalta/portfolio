import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class MilestoneCard extends StatelessWidget {
  final IconData icon;
  final String description;
  final double height;

  const MilestoneCard({
    super.key,
    required this.icon,
    required this.description,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: height,
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppPaddings.small,
            horizontal: AppPaddings.medium,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: AppPaddings.small),
                  child: Text(description, overflow: TextOverflow.visible),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
