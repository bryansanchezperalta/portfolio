import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/cards/project_card.dart';

class ProjectsRow extends StatefulWidget {
  const ProjectsRow({super.key});

  @override
  State<ProjectsRow> createState() => _ProjectsRowState();
}

class _ProjectsRowState extends State<ProjectsRow> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
        children: Project.values.map((project) {
          return ProjectCard(project: project);
        }).toList(),
      ),
    );
  }
}
