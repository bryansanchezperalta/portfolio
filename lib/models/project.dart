import 'package:portfolio/models/milestone.dart';
import 'package:portfolio/models/tool.dart';

class Project {
  final String imagePath;
  final String title;
  final String? iosLink;
  final String? androidLink;
  final String description;
  final String role;
  final List<String>? imagesPath;
  final List<Milestone> milestones;
  final List<Tool> tools;

  Project({
    required this.imagePath,
    required this.title,
    this.iosLink,
    this.androidLink,
    required this.description,
    required this.role,
    this.imagesPath,
    required this.milestones,
    required this.tools,
  });
}
