import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/Project.dart';
import 'package:portfolio/widgets/cards/milestone_card.dart';
import 'package:portfolio/widgets/cards/project_card.dart';
import 'package:portfolio/widgets/section.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/rows/store_links.dart';

class ProjectDetails extends StatelessWidget {
  final Project project;
  final ScrollController _scrollController = ScrollController();

  ProjectDetails({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(AppPaddings.medium),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: AppPaddings.medium),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            AppBorderRadii.small,
                          ),
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
                                iosUri: project.iosLink,
                                androidUri: project.androidLink,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (project.imagesPath != null)
                    Section(
                      title: 'Images',
                      content: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(AppPaddings.medium),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: project.imagesPath!.map(
                                (imagePath) {
                                  return Image.asset(
                                    imagePath,
                                    height: 350,
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  Section(
                    title: 'Milestones',
                    content: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: project.milestones.map(
                          (milestone) {
                            return MilestoneCard(
                              icon: milestone.icon,
                              description: milestone.description,
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                  Section(
                    title: 'Tools',
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: project.tools.map(
                        (tool) {
                          return ProjectCard(
                            imageName: tool.imagePath,
                            title: tool.title,
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
            Footer(scrollController: _scrollController),
          ],
        ),
      ),
    );
  }
}
