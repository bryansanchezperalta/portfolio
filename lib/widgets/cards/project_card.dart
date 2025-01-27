import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class ProjectCard extends StatelessWidget {
  final String imageName;
  final String title;
  final VoidCallback? onTap;

  const ProjectCard({
    super.key,
    required this.imageName,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(AppPaddings.small),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppBorderRadii.medium),
                  child: Image.asset(imageName, height: 70),
                ),
                Text(title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
