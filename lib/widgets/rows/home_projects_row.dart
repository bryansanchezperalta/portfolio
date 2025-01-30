import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/milestone.dart';
import 'package:portfolio/models/tool.dart';
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
        children: [
          ProjectCard(
            imageName: 'icons/rhd.png',
            title: 'RHD',
            onTap: () {
              context.push(
                '/project',
                extra: Project(
                  imagePath: 'icons/rhd.png',
                  title: 'RHD',
                  iosLink: 'https://apps.apple.com/it/app/rhd/id1473134077',
                  description:
                      'RHD, the flagship product of Alfa Group\'s Software Factory, is a low-code platform for designing and automating business processes (BPM).',
                  role: 'Flutter Developer',
                  imagesPath: [
                    'projects/rhd/app_images/splash.png',
                    'projects/rhd/app_images/dashboards.png',
                    'projects/rhd/app_images/myRHD.png',
                    'projects/rhd/app_images/tickets.png',
                  ],
                  milestones: [
                    Milestone(
                      icon: Icons.design_services,
                      description:
                          'Completely redesigned the app\'s user interface, integrating Apple\'s Human Interface Guidelines using CupertinoWidgets',
                    ),
                    Milestone(
                      icon: Icons.notifications,
                      description:
                          'Implemented notifications using Firebase Cloud Messaging.',
                    ),
                    Milestone(
                      icon: Icons.code,
                      description:
                          'Developed integration tests for the entire app.',
                    ),
                    Milestone(
                      icon: Icons.rocket_launch,
                      description:
                          'Improved performance, scalability, and maintainability',
                    ),
                  ],
                  tools: [
                    Tool(imagePath: 'icons/flutter.png', title: 'Flutter'),
                    Tool(
                      imagePath: 'icons/firebase.png',
                      title: 'Firebase',
                    ),
                    Tool(
                      imagePath: 'icons/google_cloud.jpg',
                      title: 'Google Cloud',
                    ),
                  ],
                ),
              );
            },
          ),
          ProjectCard(
            imageName: 'icons/spark.png',
            title: 'S-Park',
            onTap: () {
              context.push(
                '/project',
                extra: Project(
                  imagePath: 'icons/spark.png',
                  title: 'S-Park',
                  description:
                      'S-Park is a mobile app designed to allow user to spend less time finding and reserving monitored and free parking slots, considering: distance, prizes and schedules.',
                  role: 'Owner',
                  imagesPath: [
                    'projects/spark/app_images/map.png',
                    'projects/spark/app_images/garage_modal.png',
                    'projects/spark/app_images/garage.png',
                    'projects/spark/app_images/profile.png',
                  ],
                  milestones: [
                    Milestone(
                      icon: Icons.map_outlined,
                      description: 'Integrated Google and Apple maps API.',
                    ),
                    Milestone(
                      icon: Icons.payment,
                      description:
                          'Implemented payments processing using Stripe\'s API.',
                    ),
                    Milestone(
                      icon: Icons.data_array_rounded,
                      description:
                          'Managed database, media storage and authentication using Firebase',
                    ),
                  ],
                  tools: [
                    Tool(imagePath: 'icons/flutter.png', title: 'Flutter'),
                    Tool(
                      imagePath: 'icons/firebase.png',
                      title: 'Firebase',
                    ),
                    Tool(
                      imagePath: 'icons/google_maps.jpeg',
                      title: 'Google Maps Api',
                    ),
                    Tool(imagePath: 'icons/mapkit.jpg', title: 'MapKit'),
                  ],
                ),
              );
            },
          ),
          ProjectCard(
            imageName: 'icons/homext.jpeg',
            title: 'Homext',
            onTap: () {
              context.push(
                '/project',
                extra: Project(
                  imagePath: 'icons/homext.jpeg',
                  title: 'Homext',
                  description:
                      'Homext is a mobile app designed to allow Apple user to monitor their electricity bills, tracking the consumption of each HomeKit device.',
                  role: 'iOS Developer',
                  milestones: [
                    Milestone(
                      icon: Icons.home_filled,
                      description: 'Managed HomeKit devices.',
                    ),
                    Milestone(
                      icon: Icons.data_array_rounded,
                      description: 'Managed database using FileMaker.',
                    ),
                  ],
                  tools: [
                    Tool(imagePath: 'icons/swiftui.png', title: 'SwiftUI'),
                    Tool(imagePath: 'icons/homekit.png', title: 'HomeKit'),
                    Tool(
                      imagePath: 'icons/filemaker.png',
                      title: 'Filemaker',
                    ),
                  ],
                ),
              );
            },
          ),
          ProjectCard(
            imageName: 'icons/evergreen.jpg',
            title: 'Evergreen',
            onTap: () {
              context.push(
                '/project',
                extra: Project(
                  imagePath: 'icons/evergreen.jpg',
                  title: 'Evergreen',
                  description:
                      'Evergreen is a mobile app designed to allow user to access their workout schedule and anable gym istructors to manage them.',
                  role: 'Flutter developer',
                  milestones: [
                    Milestone(
                      icon: Icons.person,
                      description:
                          'I developed the entire app from scratch, using Firebase for the database, media storage, authentication and backend APIs',
                    ),
                  ],
                  tools: [
                    Tool(
                      imagePath: 'icons/flutter.png',
                      title: 'Flutter',
                    ),
                    Tool(
                      imagePath: 'icons/firebase.png',
                      title: 'Firebase',
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
