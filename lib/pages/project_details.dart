import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/cards/milestone_card.dart';
import 'package:portfolio/widgets/cards/project_card.dart';
import 'package:portfolio/widgets/section.dart';
import 'package:portfolio/widgets/rows/store_links.dart';
import 'package:portfolio/widgets/footer.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;
  const ProjectDetailsPage({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return LayoutBuilder(builder: (context, constraints) {
      final bool isDesktop = constraints.maxWidth >= 700;

      return Scaffold(
        body: ListView(
          controller: scrollController,
          children: [
            Padding(
              padding: EdgeInsets.all(AppPaddings.medium),
              child: isDesktop ? _desktopHeader(context) : _mobileHeader(context),
            ),

            if (project.imagesPath != null)
              Section(
                title: 'Images',
                content: Card(
                  margin: EdgeInsets.symmetric(horizontal: AppBorderRadii.medium),
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
                  return ProjectCard(
                    imageName: tool.imagePath,
                    title: tool.title,
                  );
                }).toList(),
              ),
            ),

            Footer(scrollController: scrollController),
          ],
        ),
      );
    });
  }

  Widget _desktopHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppBorderRadii.small),
          child: Image.asset(project.imagePath, height: 200),
        ),
        Container(
          padding: EdgeInsets.only(left: AppPaddings.medium),
          height: 200,
          width: 450,
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
              Text(
                project.description,
                style: TextStyle(fontSize: AppFontSizes.small),
              ),
              const Spacer(),
              StoreLinks(
                iosUrl: project.iosLink,
                androidUrl: project.androidLink,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _mobileHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPaddings.medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.title,
                style: TextStyle(
                  fontSize: AppFontSizes.xl,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                project.role,
                style: TextStyle(
                  fontSize: AppFontSizes.large,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                project.description,
                style: TextStyle(fontSize: AppFontSizes.small),
              ),
              StoreLinks(
                iosUrl: project.iosLink,
                androidUrl: project.androidLink,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(AppPaddings.medium),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppBorderRadii.small),
            child: Image.asset(project.imagePath, height: 200),
          ),
        ),
      ],
    );
  }

  // helper to create a ScrollController for footer usage
}
