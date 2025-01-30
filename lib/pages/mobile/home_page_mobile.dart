import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/widgets/cards/experience_card.dart';
import 'package:portfolio/widgets/cards/project_card.dart';
import 'package:portfolio/widgets/mobile/footer_mobile.dart';
import 'package:portfolio/widgets/rows/education_row.dart';
import 'package:portfolio/widgets/rows/professional_experiences_row.dart';
import 'package:portfolio/widgets/rows/home_projects_row.dart';
import 'package:portfolio/widgets/section.dart';
import 'package:universal_html/html.dart' as html;

class HomePageMobile extends StatelessWidget {
  HomePageMobile({super.key});

  final ScrollController _scrollController = ScrollController();

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bryan Sánchez Peralta',
                        style: TextStyle(
                          fontSize: AppFontSizes.xl,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Mobile app developer',
                        style: TextStyle(
                          fontSize: AppFontSizes.large,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '''
I am a passionate mobile app developer with a strong desire to continue learning and improving my skills.
Experienced developing both native and hybrid apps.
''',
                        style: TextStyle(
                          fontSize: AppFontSizes.small,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              // Load the file as Uint8List from assets
                              ByteData data = await rootBundle.load('cv.pdf');

                              final pdfData = data.buffer.asUint8List();

                              // Create a blob and download link
                              final blob = html.Blob(
                                [pdfData],
                                'application/pdf',
                              );

                              final url = html.Url.createObjectUrlFromBlob(
                                blob,
                              );

                              // Create a temporary anchor element and trigger download
                              html.AnchorElement(href: url)
                                ..target = 'blank'
                                ..download = 'cv.pdf'
                                ..click();

                              // Clean up the URL object
                              html.Url.revokeObjectUrl(url);
                            },
                            child: const Text('Download CV'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: AppPaddings.medium,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                _scrollController.animateTo(
                                  _scrollController.position.maxScrollExtent,
                                  curve: Curves.easeOut,
                                  duration: const Duration(
                                    milliseconds: 300,
                                  ),
                                );
                              },
                              child: const Text('Contact'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(AppPaddings.medium),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        AppBorderRadii.small,
                      ),
                      child: Image.asset('profile_image.jpg', height: 200),
                    ),
                  ),
                  const Section(
                    title: 'Projects',
                    content: ProjectsRow(),
                  ),
                  Section(
                    title: 'Tools',
                    content: SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          ProjectCard(
                            imageName: 'icons/swiftui.png',
                            title: 'SwiftUI',
                          ),
                          ProjectCard(
                            imageName: 'icons/flutter.png',
                            title: 'Flutter',
                          ),
                          ProjectCard(
                            imageName: 'icons/firebase.png',
                            title: 'Firebase',
                          ),
                          ProjectCard(
                            imageName: 'icons/google_cloud.jpg',
                            title: 'Google Cloud',
                          ),
                          ProjectCard(
                            imageName: 'icons/homekit.png',
                            title: 'HomeKit',
                          ),
                          ProjectCard(
                            imageName: 'icons/realitykit.jpg',
                            title: 'RealityKit',
                          ),
                          ProjectCard(
                            imageName: 'icons/filemaker.png',
                            title: 'FileMaker',
                          ),
                          ProjectCard(
                            imageName: 'icons/google_maps.jpeg',
                            title: 'Google Maps Api',
                          ),
                          ProjectCard(
                            imageName: 'icons/mapkit.jpg',
                            title: 'MapKit',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Section(
                    title: 'Professional Experiences',
                    content: ProfessionalExperiencesRow(),
                  ),
                  const Section(
                    title: 'Additional Experiences',
                    content: ExperienceCard(
                      title: 'S-Park',
                      description:
                          'I created and developed S-Park, a multi-platform app available on both the App Store and Play Store.\nDuring development, I deepened my knowledge of Dart, Flutter and Firebase.',
                    ),
                  ),
                  const Section(
                    title: 'Education and training',
                    content: EducationRow(),
                  ),
                ],
              ),
            ),
            FooterMobile(scrollController: _scrollController),
          ],
        ),
      ),
    );
  }
}
