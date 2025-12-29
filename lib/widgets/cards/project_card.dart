import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push('/project', extra: project);
      },
      child: SizedBox(
        width: 150,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(AppPaddings.small),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppBorderRadii.medium),
                  child: Image.asset(project.imagePath, height: 70),
                ),
                Text(project.title),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
