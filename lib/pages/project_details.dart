import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/cards/milestone_card.dart';
import 'package:portfolio/widgets/cards/tool_card.dart';
import 'package:portfolio/widgets/section.dart';
import 'package:portfolio/widgets/rows/store_links.dart';
import 'package:portfolio/widgets/footer.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;
  const ProjectDetailsPage({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      body: ListView(
        controller: scrollController,
        children: [
          Padding(
            padding: EdgeInsets.all(AppPaddings.medium),
            child: _header(context),
          ),
          Section(
            title: 'Description',
            content: Card(
              margin: EdgeInsets.symmetric(
                horizontal: AppPaddings.medium,
              ),
              child: Padding(
                padding: EdgeInsets.all(AppPaddings.medium),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    project.descripition,
                    style: TextStyle(fontSize: AppFontSizes.small),
                  ),
                ),
              ),
            ),
          ),
          if (project.imagesPath != null)
            Section(
              title: 'Images',
              content: Card(
                margin: EdgeInsets.symmetric(
                  horizontal: AppPaddings.medium,
                ),
                child: SizedBox(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.all(AppPaddings.medium),
                    children: project.imagesPath!.map((imagePath) {
                      return Image.asset(imagePath);
                    }).toList(),
                  ),
                ),
              ),
            ),
          Section(
            title: 'Milestones',
            content: SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
                children: project.milestones.map((milestone) {
                  return MilestoneCard(
                    icon: milestone.icon,
                    description: milestone.description,
                  );
                }).toList(),
              ),
            ),
          ),
          Section(
            title: 'Tools',
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: project.tools.map((tool) {
                return ToolCard(tool: tool);
              }).toList(),
            ),
          ),
          Footer(scrollController: scrollController),
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppBorderRadii.small),
          child: Image.asset(
            project.imagePath,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: AppPaddings.medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.title,
                style: TextStyle(
                  fontSize: AppFontSizes.large,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                project.role,
                style: TextStyle(fontSize: AppFontSizes.small),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppPaddings.small),
                child: StoreLinks(
                  iosUrl: project.iosLink,
                  androidUrl: project.androidLink,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
