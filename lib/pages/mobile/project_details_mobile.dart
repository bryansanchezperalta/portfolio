import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/widgets/cards/milestone_card.dart';
import 'package:portfolio/widgets/cards/project_card.dart';
import 'package:portfolio/widgets/mobile/footer_mobile.dart';
import 'package:portfolio/widgets/section.dart';
import 'package:portfolio/widgets/rows/store_links.dart';

class ProjectDetailsMobile extends StatelessWidget {
  final Project project;
  final ScrollController _scrollController = ScrollController();

  ProjectDetailsMobile({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: _scrollController,
        children: [
          Column(
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
                  borderRadius: BorderRadius.circular(
                    AppBorderRadii.small,
                  ),
                  child: Image.asset(project.imagePath, height: 200),
                ),
              ),
              if (project.imagesPath != null)
                Section(
                  title: 'Images',
                  content: Card(
                    margin: EdgeInsets.symmetric(
                      horizontal: AppBorderRadii.medium,
                    ),
                    child: SizedBox(
                      height: 350,
                      child: ListView(
                        padding: EdgeInsets.all(AppPaddings.medium),
                        scrollDirection: Axis.horizontal,
                        children: project.imagesPath!.map(
                          (imagePath) {
                            return Image.asset(imagePath);
                          },
                        ).toList(),
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
                    padding: EdgeInsets.symmetric(
                      horizontal: AppBorderRadii.medium,
                    ),
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
                content: SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(
                      horizontal: AppPaddings.medium,
                    ),
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
              ),
            ],
          ),
          FooterMobile(scrollController: _scrollController),
        ],
      ),
    );
  }
}
